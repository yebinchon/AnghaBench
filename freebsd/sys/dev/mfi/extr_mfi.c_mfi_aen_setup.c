
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int evt_class; int locale; scalar_t__ reserved; } ;
union mfi_evt {int word; TYPE_1__ members; } ;
typedef scalar_t__ uint32_t ;
struct mfi_softc {int mfi_boot_seq_num; int mfi_io_lock; } ;
struct mfi_evt_log_state {scalar_t__ newest_seq_num; int shutdown_seq_num; int boot_seq_num; } ;


 int MA_OWNED ;
 int M_MFIBUF ;
 int free (struct mfi_evt_log_state*,int ) ;
 int mfi_aen_register (struct mfi_softc*,scalar_t__,int ) ;
 int mfi_event_class ;
 int mfi_event_locale ;
 int mfi_get_log_state (struct mfi_softc*,struct mfi_evt_log_state**) ;
 int mfi_parse_entries (struct mfi_softc*,int ,scalar_t__) ;
 int mtx_assert (int *,int ) ;

int
mfi_aen_setup(struct mfi_softc *sc, uint32_t seq_start)
{
 struct mfi_evt_log_state *log_state = ((void*)0);
 union mfi_evt class_locale;
 int error = 0;
 uint32_t seq;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 class_locale.members.reserved = 0;
 class_locale.members.locale = mfi_event_locale;
 class_locale.members.evt_class = mfi_event_class;

 if (seq_start == 0) {
  if ((error = mfi_get_log_state(sc, &log_state)) != 0)
   goto out;
  sc->mfi_boot_seq_num = log_state->boot_seq_num;





  if ((error = mfi_parse_entries(sc, log_state->shutdown_seq_num,
      log_state->newest_seq_num)) != 0)
   goto out;
  seq = log_state->newest_seq_num;
 } else
  seq = seq_start;
 error = mfi_aen_register(sc, seq, class_locale.word);
out:
 free(log_state, M_MFIBUF);

 return (error);
}

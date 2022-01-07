
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ evt_class; int locale; } ;
union mfi_evt {int word; TYPE_1__ members; } ;
typedef int uint32_t ;
struct mfi_softc {int last_seq_num; struct mfi_command* mfi_aen_cm; int mfi_io_lock; } ;
struct mfi_evt_detail {int dummy; } ;
struct mfi_dcmd_frame {int mbox; } ;
struct mfi_command {int cm_complete; int cm_flags; TYPE_2__* cm_frame; } ;
struct TYPE_4__ {struct mfi_dcmd_frame dcmd; } ;


 int MA_OWNED ;
 int MFI_CMD_DATAIN ;
 int MFI_DCMD_CTRL_EVENT_WAIT ;
 int mfi_abort (struct mfi_softc*,struct mfi_command**) ;
 int mfi_aen_complete ;
 int mfi_dcmd_command (struct mfi_softc*,struct mfi_command**,int ,void**,int) ;
 int mfi_enqueue_ready (struct mfi_command*) ;
 int mfi_startio (struct mfi_softc*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
mfi_aen_register(struct mfi_softc *sc, int seq, int locale)
{
 struct mfi_command *cm;
 struct mfi_dcmd_frame *dcmd;
 union mfi_evt current_aen, prior_aen;
 struct mfi_evt_detail *ed = ((void*)0);
 int error = 0;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 current_aen.word = locale;
 if (sc->mfi_aen_cm != ((void*)0)) {
  prior_aen.word =
      ((uint32_t *)&sc->mfi_aen_cm->cm_frame->dcmd.mbox)[1];
  if (prior_aen.members.evt_class <= current_aen.members.evt_class &&
      !((prior_aen.members.locale & current_aen.members.locale)
      ^current_aen.members.locale)) {
   return (0);
  } else {
   prior_aen.members.locale |= current_aen.members.locale;
   if (prior_aen.members.evt_class
       < current_aen.members.evt_class)
    current_aen.members.evt_class =
        prior_aen.members.evt_class;
   mfi_abort(sc, &sc->mfi_aen_cm);
  }
 }

 error = mfi_dcmd_command(sc, &cm, MFI_DCMD_CTRL_EVENT_WAIT,
     (void **)&ed, sizeof(*ed));
 if (error)
  goto out;

 dcmd = &cm->cm_frame->dcmd;
 ((uint32_t *)&dcmd->mbox)[0] = seq;
 ((uint32_t *)&dcmd->mbox)[1] = locale;
 cm->cm_flags = MFI_CMD_DATAIN;
 cm->cm_complete = mfi_aen_complete;

 sc->last_seq_num = seq;
 sc->mfi_aen_cm = cm;

 mfi_enqueue_ready(cm);
 mfi_startio(sc);

out:
 return (error);
}

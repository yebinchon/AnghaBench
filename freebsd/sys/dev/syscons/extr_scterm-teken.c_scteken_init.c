
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ts_busy; int ts_teken; } ;
typedef TYPE_1__ teken_stat ;
typedef int teken_attr_t ;
typedef int scr_stat ;
struct TYPE_7__ {scalar_t__ ts_busy; } ;
struct TYPE_6__ {int te_refcount; } ;


 int EINVAL ;


 TYPE_4__ reserved_teken_stat ;
 TYPE_3__ sc_term_scteken ;
 int scteken_funcs ;
 int scteken_sync_internal (int *,TYPE_1__*) ;
 int * teken_get_defattr (int *) ;
 int teken_init (int *,int *,int *) ;
 int teken_set_8bit (int *) ;
 int teken_set_cons25 (int *) ;
 int teken_set_cons25keys (int *) ;
 int teken_set_defattr (int *,int *) ;

__attribute__((used)) static int
scteken_init(scr_stat *scp, void **softc, int code)
{
 teken_stat *ts;
 teken_attr_t ta;

 if (*softc == ((void*)0)) {
  if (reserved_teken_stat.ts_busy)
   return (EINVAL);
  *softc = &reserved_teken_stat;
 }
 ts = *softc;

 switch (code) {
 case 129:
  ++sc_term_scteken.te_refcount;
  ts->ts_busy = 1;

 case 128:
  ta = *teken_get_defattr(&ts->ts_teken);
  teken_init(&ts->ts_teken, &scteken_funcs, scp);
  teken_set_defattr(&ts->ts_teken, &ta);

  teken_set_8bit(&ts->ts_teken);




  teken_set_cons25keys(&ts->ts_teken);
  scteken_sync_internal(scp, ts);
  break;
 }

 return (0);
}

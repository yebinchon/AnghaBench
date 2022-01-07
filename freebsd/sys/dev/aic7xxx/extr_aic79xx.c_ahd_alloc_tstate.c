
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ahd_tmode_tstate {TYPE_1__* transinfo; struct ahd_tmode_tstate* enabled_luns; } ;
struct ahd_softc {size_t our_id; struct ahd_tmode_tstate** enabled_targets; } ;
struct TYPE_2__ {struct ahd_tmode_tstate goal; struct ahd_tmode_tstate curr; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int ahd_name (struct ahd_softc*) ;
 struct ahd_tmode_tstate* malloc (int,int ,int ) ;
 int memcpy (struct ahd_tmode_tstate*,struct ahd_tmode_tstate*,int) ;
 int memset (struct ahd_tmode_tstate*,int ,int) ;
 int panic (char*,int ) ;

__attribute__((used)) static struct ahd_tmode_tstate *
ahd_alloc_tstate(struct ahd_softc *ahd, u_int scsi_id, char channel)
{
 struct ahd_tmode_tstate *master_tstate;
 struct ahd_tmode_tstate *tstate;
 int i;

 master_tstate = ahd->enabled_targets[ahd->our_id];
 if (ahd->enabled_targets[scsi_id] != ((void*)0)
  && ahd->enabled_targets[scsi_id] != master_tstate)
  panic("%s: ahd_alloc_tstate - Target already allocated",
        ahd_name(ahd));
 tstate = malloc(sizeof(*tstate), M_DEVBUF, M_NOWAIT);
 if (tstate == ((void*)0))
  return (((void*)0));







 if (master_tstate != ((void*)0)) {
  memcpy(tstate, master_tstate, sizeof(*tstate));
  memset(tstate->enabled_luns, 0, sizeof(tstate->enabled_luns));
  for (i = 0; i < 16; i++) {
   memset(&tstate->transinfo[i].curr, 0,
         sizeof(tstate->transinfo[i].curr));
   memset(&tstate->transinfo[i].goal, 0,
         sizeof(tstate->transinfo[i].goal));
  }
 } else
  memset(tstate, 0, sizeof(*tstate));
 ahd->enabled_targets[scsi_id] = tstate;
 return (tstate);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_softc {int our_id_b; int our_id; struct ahc_tmode_tstate** enabled_targets; } ;


 int FALSE ;
 int M_DEVBUF ;
 int free (struct ahc_tmode_tstate*,int ) ;

__attribute__((used)) static void
ahc_free_tstate(struct ahc_softc *ahc, u_int scsi_id, char channel, int force)
{
 struct ahc_tmode_tstate *tstate;





 if (((channel == 'B' && scsi_id == ahc->our_id_b)
   || (channel == 'A' && scsi_id == ahc->our_id))
  && force == FALSE)
  return;

 if (channel == 'B')
  scsi_id += 8;
 tstate = ahc->enabled_targets[scsi_id];
 if (tstate != ((void*)0))
  free(tstate, M_DEVBUF);
 ahc->enabled_targets[scsi_id] = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; scalar_t__ ppriv_ptr1; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mprsas_softc {int sc; } ;
struct cam_periph {int dummy; } ;
typedef int path_str ;


 int MPR_INFO ;
 int mpr_dprint (int ,int ,char*,char*) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (int ) ;
 int xpt_path_string (int ,char*,int) ;

__attribute__((used)) static void
mprsas_stop_unit_done(struct cam_periph *periph, union ccb *done_ccb)
{
 struct mprsas_softc *sassc;
 char path_str[64];

 if (done_ccb == ((void*)0))
  return;

 sassc = (struct mprsas_softc *)done_ccb->ccb_h.ppriv_ptr1;

 xpt_path_string(done_ccb->ccb_h.path, path_str, sizeof(path_str));
 mpr_dprint(sassc->sc, MPR_INFO, "Completing stop unit for %s\n",
     path_str);






 xpt_free_path(done_ccb->ccb_h.path);
 xpt_free_ccb(done_ccb);
}

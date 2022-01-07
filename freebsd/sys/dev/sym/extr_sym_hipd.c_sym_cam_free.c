
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hcb_p ;
struct TYPE_3__ {int * path; int * sim; int * intr; int irq_res; int device; } ;


 int MA_NOTOWNED ;
 int SYM_LOCK () ;
 int SYM_LOCK_ASSERT (int ) ;
 int SYM_UNLOCK () ;
 int TRUE ;
 int bus_teardown_intr (int ,int ,int *) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int *) ;

__attribute__((used)) static void sym_cam_free(hcb_p np)
{

 SYM_LOCK_ASSERT(MA_NOTOWNED);

 if (np->intr) {
  bus_teardown_intr(np->device, np->irq_res, np->intr);
  np->intr = ((void*)0);
 }

 SYM_LOCK();

 if (np->sim) {
  xpt_bus_deregister(cam_sim_path(np->sim));
  cam_sim_free(np->sim, TRUE);
  np->sim = ((void*)0);
 }
 if (np->path) {
  xpt_free_path(np->path);
  np->path = ((void*)0);
 }

 SYM_UNLOCK();
}

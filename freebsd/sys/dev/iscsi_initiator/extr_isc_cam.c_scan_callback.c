
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ spriv_ptr0; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_periph {int dummy; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ isc_session_t ;


 int ISC_SCANWAIT ;
 int debug_called (int) ;
 int wakeup (TYPE_2__*) ;
 int xpt_free_ccb (union ccb*) ;

__attribute__((used)) static void
scan_callback(struct cam_periph *periph, union ccb *ccb)
{
     isc_session_t *sp = (isc_session_t *)ccb->ccb_h.spriv_ptr0;

     debug_called(8);

     xpt_free_ccb(ccb);

     if(sp->flags & ISC_SCANWAIT) {
   sp->flags &= ~ISC_SCANWAIT;
   wakeup(sp);
     }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int hcb_p ;


 int MA_OWNED ;
 int SYM_LOCK_ASSERT (int ) ;
 int sym_set_cam_status (union ccb*,int) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void sym_xpt_done2(hcb_p np, union ccb *ccb, int cam_status)
{

 SYM_LOCK_ASSERT(MA_OWNED);

 sym_set_cam_status(ccb, cam_status);
 xpt_done(ccb);
}

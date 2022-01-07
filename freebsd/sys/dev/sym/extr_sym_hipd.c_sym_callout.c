
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func_code; int sym_hcb_ptr; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int hcb_p ;


 int SYM_LOCK () ;
 int SYM_UNLOCK () ;

 int sym_abort_scsiio (int ,union ccb*,int) ;

__attribute__((used)) static void sym_callout(void *arg)
{
 union ccb *ccb = (union ccb *) arg;
 hcb_p np = ccb->ccb_h.sym_hcb_ptr;




 if (!np)
  return;

 SYM_LOCK();

 switch(ccb->ccb_h.func_code) {
 case 128:
  (void) sym_abort_scsiio(np, ccb, 1);
  break;
 default:
  break;
 }

 SYM_UNLOCK();
}

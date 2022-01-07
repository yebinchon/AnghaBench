
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dxfer_len; scalar_t__ data_ptr; } ;
union ccb {TYPE_1__ csio; } ;
struct TYPE_11__ {int priv; } ;
struct TYPE_10__ {union ccb* ccb; } ;
struct TYPE_9__ {int eot; int size; } ;
typedef TYPE_2__* PSG ;
typedef TYPE_3__* POS_CMDEXT ;
typedef TYPE_4__* PCOMMAND ;
typedef int HPT_U8 ;


 int FALSE ;
 int HPT_ASSERT (int ) ;
 int TRUE ;
 int os_set_sgptr (TYPE_2__*,int *) ;

__attribute__((used)) static int os_buildsgl(PCOMMAND pCmd, PSG pSg, int logical)
{
 POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;
 union ccb *ccb = ext->ccb;

 if (logical) {
  os_set_sgptr(pSg, (HPT_U8 *)ccb->csio.data_ptr);
  pSg->size = ccb->csio.dxfer_len;
  pSg->eot = 1;
  return TRUE;
 }


 HPT_ASSERT(0);
 return FALSE;
}

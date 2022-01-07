
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct TYPE_2__ {int co_interlock; } ;
struct smb_vc {TYPE_1__ obj; int vc_mid; } ;


 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

u_short
smb_vc_nextmid(struct smb_vc *vcp)
{
 u_short r;

 sx_xlock(&vcp->obj.co_interlock);
 r = vcp->vc_mid++;
 sx_unlock(&vcp->obj.co_interlock);
 return r;
}

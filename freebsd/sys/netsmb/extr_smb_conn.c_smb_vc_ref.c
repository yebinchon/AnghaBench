
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int dummy; } ;


 int VCTOCP (struct smb_vc*) ;
 int smb_co_ref (int ) ;

void
smb_vc_ref(struct smb_vc *vcp)
{
 smb_co_ref(VCTOCP(vcp));
}

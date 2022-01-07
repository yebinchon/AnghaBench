
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_share {scalar_t__ ss_tid; scalar_t__ ss_vcgenid; } ;
struct TYPE_2__ {scalar_t__ vc_genid; } ;


 scalar_t__ SMB_TID_UNKNOWN ;
 TYPE_1__* SSTOVC (struct smb_share*) ;

int
smb_share_valid(struct smb_share *ssp)
{
 return ssp->ss_tid != SMB_TID_UNKNOWN &&
     ssp->ss_vcgenid == SSTOVC(ssp)->vc_genid;
}

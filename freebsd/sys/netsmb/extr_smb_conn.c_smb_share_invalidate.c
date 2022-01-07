
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {int ss_tid; } ;


 int SMB_TID_UNKNOWN ;

void
smb_share_invalidate(struct smb_share *ssp)
{
 ssp->ss_tid = SMB_TID_UNKNOWN;
}

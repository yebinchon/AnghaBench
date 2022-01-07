
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_share_info {int sname; int flags; int mode; int gid; int uid; int type; int tid; int usecount; int itype; } ;
struct TYPE_2__ {int co_flags; int co_usecount; } ;
struct smb_share {char* ss_name; TYPE_1__ obj; int ss_mode; int ss_grp; int ss_uid; int ss_type; int ss_tid; } ;


 int SMB_INFO_SHARE ;
 int bzero (struct smb_share_info*,int) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int
smb_share_getinfo(struct smb_share *ssp, struct smb_share_info *sip)
{
 bzero(sip, sizeof(struct smb_share_info));
 sip->itype = SMB_INFO_SHARE;
 sip->usecount = ssp->obj.co_usecount;
 sip->tid = ssp->ss_tid;
 sip->type= ssp->ss_type;
 sip->uid = ssp->ss_uid;
 sip->gid = ssp->ss_grp;
 sip->mode= ssp->ss_mode;
 sip->flags = ssp->obj.co_flags;
 snprintf(sip->sname, sizeof(sip->sname), "%s", ssp->ss_name);
 return 0;
}

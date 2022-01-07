
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct ucred {scalar_t__ cr_uid; scalar_t__* cr_groups; } ;
struct smb_vc {int dummy; } ;
struct smb_sharespec {scalar_t__ owner; scalar_t__ group; int rights; int stype; scalar_t__* pass; scalar_t__* name; } ;
struct TYPE_2__ {int co_gone; int co_free; } ;
struct smb_share {int ss_mode; scalar_t__ ss_grp; scalar_t__ ss_uid; int ss_tid; int ss_type; void* ss_pass; void* ss_name; int ss_stlock; TYPE_1__ obj; } ;
struct smb_cred {struct ucred* scr_cred; } ;
typedef scalar_t__ gid_t ;


 int EEXIST ;
 int EPERM ;
 int M_SMBCONN ;
 int M_WAITOK ;
 int SMBL_SHARE ;
 scalar_t__ SMBM_ANY_GROUP ;
 scalar_t__ SMBM_ANY_OWNER ;
 int SMBM_MASK ;
 int SMB_TID_UNKNOWN ;
 int SSTOCP (struct smb_share*) ;
 int VCTOCP (struct smb_vc*) ;
 int groupmember (scalar_t__,struct ucred*) ;
 int smb_co_addchild (int ,int ) ;
 int smb_co_init (int ,int ,char*,char*) ;
 int smb_share_free ;
 int smb_share_gone ;
 int smb_share_put (struct smb_share*,struct smb_cred*) ;
 int smb_sl_init (int *,char*) ;
 void* smb_strdup (scalar_t__*) ;
 scalar_t__ smb_suser (struct ucred*) ;
 int smb_vc_lookupshare (struct smb_vc*,struct smb_sharespec*,struct smb_cred*,struct smb_share**) ;
 struct smb_share* smb_zmalloc (int,int ,int ) ;

int
smb_share_create(struct smb_vc *vcp, struct smb_sharespec *shspec,
 struct smb_cred *scred, struct smb_share **sspp)
{
 struct smb_share *ssp;
 struct ucred *cred = scred->scr_cred;
 uid_t realuid = cred->cr_uid;
 uid_t uid = shspec->owner;
 gid_t gid = shspec->group;
 int error, isroot;

 isroot = smb_suser(cred) == 0;



 if (uid != SMBM_ANY_OWNER && uid != realuid && !isroot)
  return EPERM;
 if (gid != SMBM_ANY_GROUP && !groupmember(gid, cred) && !isroot)
  return EPERM;
 error = smb_vc_lookupshare(vcp, shspec, scred, &ssp);
 if (!error) {
  smb_share_put(ssp, scred);
  return EEXIST;
 }
 if (uid == SMBM_ANY_OWNER)
  uid = realuid;
 if (gid == SMBM_ANY_GROUP)
  gid = cred->cr_groups[0];
 ssp = smb_zmalloc(sizeof(*ssp), M_SMBCONN, M_WAITOK);
 smb_co_init(SSTOCP(ssp), SMBL_SHARE, "smbss ilock", "smbss");
 ssp->obj.co_free = smb_share_free;
 ssp->obj.co_gone = smb_share_gone;
 smb_sl_init(&ssp->ss_stlock, "ssstlock");
 ssp->ss_name = smb_strdup(shspec->name);
 if (shspec->pass && shspec->pass[0])
  ssp->ss_pass = smb_strdup(shspec->pass);
 ssp->ss_type = shspec->stype;
 ssp->ss_tid = SMB_TID_UNKNOWN;
 ssp->ss_uid = uid;
 ssp->ss_grp = gid;
 ssp->ss_mode = shspec->rights & SMBM_MASK;
 smb_co_addchild(VCTOCP(vcp), SSTOCP(ssp));
 *sspp = ssp;
 return 0;
}

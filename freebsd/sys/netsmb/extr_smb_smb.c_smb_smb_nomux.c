
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_vc {TYPE_2__* vc_iod; } ;
struct smb_cred {TYPE_1__* scr_td; } ;
struct TYPE_4__ {scalar_t__ iod_p; } ;
struct TYPE_3__ {scalar_t__ td_proc; } ;


 int EINVAL ;
 int SMBERROR (char*,char const*) ;

__attribute__((used)) static int
smb_smb_nomux(struct smb_vc *vcp, struct smb_cred *scred, const char *name)
{
 if (scred->scr_td->td_proc == vcp->vc_iod->iod_p)
  return 0;
 SMBERROR("wrong function called(%s)\n", name);
 return EINVAL;
}

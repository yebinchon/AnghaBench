
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int VM_PROT_WRITE ;
 int lomac_enabled ;
 int lomac_subject_dominate (struct mac_lomac*,struct mac_lomac*) ;
 int revocation_enabled ;

__attribute__((used)) static void
lomac_vnode_check_mmap_downgrade(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, int *prot)
{
 struct mac_lomac *subj, *obj;





 if (!lomac_enabled || !revocation_enabled)
  return;

 subj = SLOT(cred->cr_label);
 obj = SLOT(vplabel);

 if (!lomac_subject_dominate(subj, obj))
  *prot &= ~VM_PROT_WRITE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int mle_grade; int mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_1__ ml_auxsingle; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;


 int IO_NODELOCKED ;
 int MAC_LOMAC_EXTATTR_NAME ;
 int MAC_LOMAC_EXTATTR_NAMESPACE ;
 int MAC_LOMAC_FLAG_AUX ;
 struct mac_lomac* SLOT (struct label*) ;
 int bzero (struct mac_lomac*,size_t) ;
 int curthread ;
 int lomac_copy (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_copy_auxsingle (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_set_single (struct mac_lomac*,int ,int ) ;
 int vn_extattr_set (struct vnode*,int ,int ,int ,size_t,char*,int ) ;

__attribute__((used)) static int
lomac_vnode_create_extattr(struct ucred *cred, struct mount *mp,
    struct label *mplabel, struct vnode *dvp, struct label *dvplabel,
    struct vnode *vp, struct label *vplabel, struct componentname *cnp)
{
 struct mac_lomac *source, *dest, *dir, temp;
 size_t buflen;
 int error;

 buflen = sizeof(temp);
 bzero(&temp, buflen);

 source = SLOT(cred->cr_label);
 dest = SLOT(vplabel);
 dir = SLOT(dvplabel);
 if (dir->ml_flags & MAC_LOMAC_FLAG_AUX) {
  lomac_copy_auxsingle(dir, &temp);
  lomac_set_single(&temp, dir->ml_auxsingle.mle_type,
      dir->ml_auxsingle.mle_grade);
 } else {
  lomac_copy_single(source, &temp);
 }

 error = vn_extattr_set(vp, IO_NODELOCKED, MAC_LOMAC_EXTATTR_NAMESPACE,
     MAC_LOMAC_EXTATTR_NAME, buflen, (char *)&temp, curthread);
 if (error == 0)
  lomac_copy(&temp, dest);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;
typedef int mm_temp ;


 int IO_NODELOCKED ;
 int MAC_MLS_EXTATTR_NAME ;
 int MAC_MLS_EXTATTR_NAMESPACE ;
 struct mac_mls* SLOT (struct label*) ;
 int bzero (struct mac_mls*,size_t) ;
 int curthread ;
 int mls_copy_effective (struct mac_mls*,struct mac_mls*) ;
 int vn_extattr_set (struct vnode*,int ,int ,int ,size_t,char*,int ) ;

__attribute__((used)) static int
mls_vnode_create_extattr(struct ucred *cred, struct mount *mp,
    struct label *mplabel, struct vnode *dvp, struct label *dvplabel,
    struct vnode *vp, struct label *vplabel, struct componentname *cnp)
{
 struct mac_mls *source, *dest, mm_temp;
 size_t buflen;
 int error;

 buflen = sizeof(mm_temp);
 bzero(&mm_temp, buflen);

 source = SLOT(cred->cr_label);
 dest = SLOT(vplabel);
 mls_copy_effective(source, &mm_temp);

 error = vn_extattr_set(vp, IO_NODELOCKED, MAC_MLS_EXTATTR_NAMESPACE,
     MAC_MLS_EXTATTR_NAME, buflen, (char *) &mm_temp, curthread);
 if (error == 0)
  mls_copy_effective(source, dest);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mac_mls {int mm_flags; } ;
struct label {int dummy; } ;
typedef int mm_temp ;


 int IO_NODELOCKED ;
 int MAC_MLS_EXTATTR_NAME ;
 int MAC_MLS_EXTATTR_NAMESPACE ;
 int MAC_MLS_FLAG_EFFECTIVE ;
 struct mac_mls* SLOT (struct label*) ;
 int bzero (struct mac_mls*,size_t) ;
 int curthread ;
 int mls_copy_effective (struct mac_mls*,struct mac_mls*) ;
 int vn_extattr_set (struct vnode*,int ,int ,int ,size_t,char*,int ) ;

__attribute__((used)) static int
mls_vnode_setlabel_extattr(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *intlabel)
{
 struct mac_mls *source, mm_temp;
 size_t buflen;
 int error;

 buflen = sizeof(mm_temp);
 bzero(&mm_temp, buflen);

 source = SLOT(intlabel);
 if ((source->mm_flags & MAC_MLS_FLAG_EFFECTIVE) == 0)
  return (0);

 mls_copy_effective(source, &mm_temp);

 error = vn_extattr_set(vp, IO_NODELOCKED, MAC_MLS_EXTATTR_NAMESPACE,
     MAC_MLS_EXTATTR_NAME, buflen, (char *) &mm_temp, curthread);
 return (error);
}

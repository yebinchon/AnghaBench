
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mac_lomac {int ml_flags; } ;
struct label {int dummy; } ;


 int IO_NODELOCKED ;
 int MAC_LOMAC_EXTATTR_NAME ;
 int MAC_LOMAC_EXTATTR_NAMESPACE ;
 int MAC_LOMAC_FLAG_SINGLE ;
 struct mac_lomac* SLOT (struct label*) ;
 int bzero (struct mac_lomac*,size_t) ;
 int curthread ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;
 int vn_extattr_set (struct vnode*,int ,int ,int ,size_t,char*,int ) ;

__attribute__((used)) static int
lomac_vnode_setlabel_extattr(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *intlabel)
{
 struct mac_lomac *source, temp;
 size_t buflen;
 int error;

 buflen = sizeof(temp);
 bzero(&temp, buflen);

 source = SLOT(intlabel);
 if ((source->ml_flags & MAC_LOMAC_FLAG_SINGLE) == 0)
  return (0);

 lomac_copy_single(source, &temp);
 error = vn_extattr_set(vp, IO_NODELOCKED, MAC_LOMAC_EXTATTR_NAMESPACE,
     MAC_LOMAC_EXTATTR_NAME, buflen, (char *)&temp, curthread);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mac_biba {int mb_flags; } ;
struct label {int dummy; } ;
typedef int mb_temp ;


 int IO_NODELOCKED ;
 int MAC_BIBA_EXTATTR_NAME ;
 int MAC_BIBA_EXTATTR_NAMESPACE ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_copy_effective (struct mac_biba*,struct mac_biba*) ;
 int bzero (struct mac_biba*,size_t) ;
 int curthread ;
 int vn_extattr_set (struct vnode*,int ,int ,int ,size_t,char*,int ) ;

__attribute__((used)) static int
biba_vnode_setlabel_extattr(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *intlabel)
{
 struct mac_biba *source, mb_temp;
 size_t buflen;
 int error;

 buflen = sizeof(mb_temp);
 bzero(&mb_temp, buflen);

 source = SLOT(intlabel);
 if ((source->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) == 0)
  return (0);

 biba_copy_effective(source, &mb_temp);

 error = vn_extattr_set(vp, IO_NODELOCKED, MAC_BIBA_EXTATTR_NAMESPACE,
     MAC_BIBA_EXTATTR_NAME, buflen, (char *) &mb_temp, curthread);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct mac_biba {int mb_flags; } ;
struct label {int dummy; } ;
typedef int mb_temp ;


 int ENOATTR ;
 int EOPNOTSUPP ;
 int EPERM ;
 int IO_NODELOCKED ;
 int MAC_BIBA_EXTATTR_NAME ;
 int MAC_BIBA_EXTATTR_NAMESPACE ;
 int MAC_BIBA_FLAGS_BOTH ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_copy_effective (struct mac_biba*,struct mac_biba*) ;
 scalar_t__ biba_valid (struct mac_biba*) ;
 int bzero (struct mac_biba*,int) ;
 int curthread ;
 int printf (char*,...) ;
 int vn_extattr_get (struct vnode*,int ,int ,int ,int*,char*,int ) ;

__attribute__((used)) static int
biba_vnode_associate_extattr(struct mount *mp, struct label *mplabel,
    struct vnode *vp, struct label *vplabel)
{
 struct mac_biba mb_temp, *source, *dest;
 int buflen, error;

 source = SLOT(mplabel);
 dest = SLOT(vplabel);

 buflen = sizeof(mb_temp);
 bzero(&mb_temp, buflen);

 error = vn_extattr_get(vp, IO_NODELOCKED, MAC_BIBA_EXTATTR_NAMESPACE,
     MAC_BIBA_EXTATTR_NAME, &buflen, (char *) &mb_temp, curthread);
 if (error == ENOATTR || error == EOPNOTSUPP) {

  biba_copy_effective(source, dest);
  return (0);
 } else if (error)
  return (error);

 if (buflen != sizeof(mb_temp)) {
  printf("biba_vnode_associate_extattr: bad size %d\n",
      buflen);
  return (EPERM);
 }
 if (biba_valid(&mb_temp) != 0) {
  printf("biba_vnode_associate_extattr: invalid\n");
  return (EPERM);
 }
 if ((mb_temp.mb_flags & MAC_BIBA_FLAGS_BOTH) !=
     MAC_BIBA_FLAG_EFFECTIVE) {
  printf("biba_vnode_associate_extattr: not effective\n");
  return (EPERM);
 }

 biba_copy_effective(&mb_temp, dest);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct mac_mls {int mm_flags; } ;
struct label {int dummy; } ;
typedef int mm_temp ;


 int ENOATTR ;
 int EOPNOTSUPP ;
 int EPERM ;
 int IO_NODELOCKED ;
 int MAC_MLS_EXTATTR_NAME ;
 int MAC_MLS_EXTATTR_NAMESPACE ;
 int MAC_MLS_FLAGS_BOTH ;
 int MAC_MLS_FLAG_EFFECTIVE ;
 struct mac_mls* SLOT (struct label*) ;
 int bzero (struct mac_mls*,int) ;
 int curthread ;
 int mls_copy_effective (struct mac_mls*,struct mac_mls*) ;
 scalar_t__ mls_valid (struct mac_mls*) ;
 int printf (char*,...) ;
 int vn_extattr_get (struct vnode*,int ,int ,int ,int*,char*,int ) ;

__attribute__((used)) static int
mls_vnode_associate_extattr(struct mount *mp, struct label *mplabel,
    struct vnode *vp, struct label *vplabel)
{
 struct mac_mls mm_temp, *source, *dest;
 int buflen, error;

 source = SLOT(mplabel);
 dest = SLOT(vplabel);

 buflen = sizeof(mm_temp);
 bzero(&mm_temp, buflen);

 error = vn_extattr_get(vp, IO_NODELOCKED, MAC_MLS_EXTATTR_NAMESPACE,
     MAC_MLS_EXTATTR_NAME, &buflen, (char *) &mm_temp, curthread);
 if (error == ENOATTR || error == EOPNOTSUPP) {

  mls_copy_effective(source, dest);
  return (0);
 } else if (error)
  return (error);

 if (buflen != sizeof(mm_temp)) {
  printf("mls_vnode_associate_extattr: bad size %d\n", buflen);
  return (EPERM);
 }
 if (mls_valid(&mm_temp) != 0) {
  printf("mls_vnode_associate_extattr: invalid\n");
  return (EPERM);
 }
 if ((mm_temp.mm_flags & MAC_MLS_FLAGS_BOTH) !=
     MAC_MLS_FLAG_EFFECTIVE) {
  printf("mls_associated_vnode_extattr: not effective\n");
  return (EPERM);
 }

 mls_copy_effective(&mm_temp, dest);
 return (0);
}

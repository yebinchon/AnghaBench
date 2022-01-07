
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;
typedef int mb_temp ;


 int IO_NODELOCKED ;
 int MAC_BIBA_EXTATTR_NAME ;
 int MAC_BIBA_EXTATTR_NAMESPACE ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_copy_effective (struct mac_biba*,struct mac_biba*) ;
 int bzero (struct mac_biba*,size_t) ;
 int curthread ;
 int vn_extattr_set (struct vnode*,int ,int ,int ,size_t,char*,int ) ;

__attribute__((used)) static int
biba_vnode_create_extattr(struct ucred *cred, struct mount *mp,
    struct label *mplabel, struct vnode *dvp, struct label *dvplabel,
    struct vnode *vp, struct label *vplabel, struct componentname *cnp)
{
 struct mac_biba *source, *dest, mb_temp;
 size_t buflen;
 int error;

 buflen = sizeof(mb_temp);
 bzero(&mb_temp, buflen);

 source = SLOT(cred->cr_label);
 dest = SLOT(vplabel);
 biba_copy_effective(source, &mb_temp);

 error = vn_extattr_set(vp, IO_NODELOCKED, MAC_BIBA_EXTATTR_NAMESPACE,
     MAC_BIBA_EXTATTR_NAME, buflen, (char *) &mb_temp, curthread);
 if (error == 0)
  biba_copy_effective(source, dest);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;



__attribute__((used)) static int
stub_vnode_create_extattr(struct ucred *cred, struct mount *mp,
    struct label *mntlabel, struct vnode *dvp, struct label *dvplabel,
    struct vnode *vp, struct label *vplabel, struct componentname *cnp)
{

 return (0);
}

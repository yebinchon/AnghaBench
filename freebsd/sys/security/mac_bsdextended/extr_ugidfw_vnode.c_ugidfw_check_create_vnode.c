
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;


 int MBI_WRITE ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_check_create_vnode(struct ucred *cred, struct vnode *dvp,
    struct label *dvplabel, struct componentname *cnp, struct vattr *vap)
{

 return (ugidfw_check_vp(cred, dvp, MBI_WRITE));
}

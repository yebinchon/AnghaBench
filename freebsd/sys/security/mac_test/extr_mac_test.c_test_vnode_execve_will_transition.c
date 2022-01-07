
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_VNODE ;
 int vnode_execve_will_transition ;

__attribute__((used)) static int
test_vnode_execve_will_transition(struct ucred *old, struct vnode *vp,
    struct label *filelabel, struct label *interpvplabel,
    struct image_params *imgp, struct label *execlabel)
{

 LABEL_CHECK(old->cr_label, MAGIC_CRED);
 LABEL_CHECK(filelabel, MAGIC_VNODE);
 LABEL_CHECK(interpvplabel, MAGIC_VNODE);
 LABEL_CHECK(execlabel, MAGIC_CRED);
 COUNTER_INC(vnode_execve_will_transition);

 return (0);
}

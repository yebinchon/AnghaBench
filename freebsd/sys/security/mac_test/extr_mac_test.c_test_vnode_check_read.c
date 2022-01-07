
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_VNODE ;
 int vnode_check_read ;

__attribute__((used)) static int
test_vnode_check_read(struct ucred *active_cred, struct ucred *file_cred,
    struct vnode *vp, struct label *vplabel)
{

 LABEL_CHECK(active_cred->cr_label, MAGIC_CRED);
 if (file_cred != ((void*)0))
  LABEL_CHECK(file_cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(vplabel, MAGIC_VNODE);
 COUNTER_INC(vnode_check_read);

 return (0);
}

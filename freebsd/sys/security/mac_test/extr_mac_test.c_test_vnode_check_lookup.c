
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_VNODE ;
 int vnode_check_lookup ;

__attribute__((used)) static int
test_vnode_check_lookup(struct ucred *cred, struct vnode *dvp,
    struct label *dvplabel, struct componentname *cnp)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(dvplabel, MAGIC_VNODE);
 COUNTER_INC(vnode_check_lookup);

 return (0);
}


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
 int system_check_auditctl ;

__attribute__((used)) static int
test_system_check_auditctl(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(vplabel, MAGIC_VNODE);
 COUNTER_INC(system_check_auditctl);

 return (0);
}

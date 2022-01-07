
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int system_check_sysctl ;

__attribute__((used)) static int
test_system_check_sysctl(struct ucred *cred, struct sysctl_oid *oidp,
    void *arg1, int arg2, struct sysctl_req *req)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(system_check_sysctl);

 return (0);
}

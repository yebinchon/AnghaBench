
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int cr_label; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int proc_check_euid ;

__attribute__((used)) static int
test_cred_check_seteuid(struct ucred *cred, uid_t euid)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(proc_check_euid);

 return (0);
}

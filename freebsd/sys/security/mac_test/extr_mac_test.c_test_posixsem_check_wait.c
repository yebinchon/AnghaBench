
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;
struct ksem {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_POSIX_SEM ;
 int posixsem_check_wait ;

__attribute__((used)) static int
test_posixsem_check_wait(struct ucred *active_cred, struct ucred *file_cred,
    struct ksem *ks, struct label *kslabel)
{

 LABEL_CHECK(active_cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(file_cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(kslabel, MAGIC_POSIX_SEM);
 COUNTER_INC(posixsem_check_wait);

 return (0);
}

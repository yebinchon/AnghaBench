
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;
struct ksem {int dummy; } ;
typedef int gid_t ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_POSIX_SHM ;
 int posixsem_check_setowner ;

__attribute__((used)) static int
test_posixsem_check_setowner(struct ucred *cred, struct ksem *ks,
    struct label *kslabel, uid_t uid, gid_t gid)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(kslabel, MAGIC_POSIX_SHM);
 COUNTER_INC(posixsem_check_setowner);
 return (0);
}

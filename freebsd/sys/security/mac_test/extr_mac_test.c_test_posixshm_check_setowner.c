
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {struct label* cr_label; } ;
struct shmfd {int dummy; } ;
struct label {int dummy; } ;
typedef int gid_t ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_POSIX_SHM ;
 int posixshm_check_setowner ;

__attribute__((used)) static int
test_posixshm_check_setowner(struct ucred *cred, struct shmfd *shmfd,
    struct label *shmfdlabel, uid_t uid, gid_t gid)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(shmfdlabel, MAGIC_POSIX_SHM);
 COUNTER_INC(posixshm_check_setowner);
 return (0);
}

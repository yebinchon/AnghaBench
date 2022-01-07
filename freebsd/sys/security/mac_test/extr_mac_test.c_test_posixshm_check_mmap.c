
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct shmfd {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_POSIX_SHM ;
 int posixshm_check_mmap ;

__attribute__((used)) static int
test_posixshm_check_mmap(struct ucred *cred, struct shmfd *shmfd,
    struct label *shmfdlabel, int prot, int flags)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(shmfdlabel, MAGIC_POSIX_SHM);
 COUNTER_INC(posixshm_check_mmap);
 return (0);
}

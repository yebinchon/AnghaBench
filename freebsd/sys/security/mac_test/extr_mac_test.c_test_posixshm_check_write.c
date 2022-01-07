
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
 int posixshm_check_write ;

__attribute__((used)) static int
test_posixshm_check_write(struct ucred *active_cred,
    struct ucred *file_cred, struct shmfd *shm, struct label *shmlabel)
{

 LABEL_CHECK(active_cred->cr_label, MAGIC_CRED);
 if (file_cred != ((void*)0))
  LABEL_CHECK(file_cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(shmlabel, MAGIC_POSIX_SHM);
 COUNTER_INC(posixshm_check_write);

 return (0);
}

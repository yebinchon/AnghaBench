
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmfd {int dummy; } ;
struct label {int dummy; } ;



__attribute__((used)) static int
stub_posixshm_check_read(struct ucred *active_cred, struct ucred *file_cred,
    struct shmfd *shm, struct label *shmlabel)
{

 return (0);
}

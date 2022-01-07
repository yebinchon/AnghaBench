
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmfd {int shm_label; } ;


 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct shmfd*,int,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct shmfd*,int ,int,int) ;
 int posixshm_check_mmap ;

int
mac_posixshm_check_mmap(struct ucred *cred, struct shmfd *shmfd, int prot,
    int flags)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixshm_check_mmap, cred, shmfd,
     shmfd->shm_label, prot, flags);
 MAC_CHECK_PROBE4(posixshm_check_mmap, error, cred, shmfd, prot,
     flags);

 return (error);
}

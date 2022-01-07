
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmfd {int shm_label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct shmfd*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct shmfd*,int ) ;
 int posixshm_check_unlink ;

int
mac_posixshm_check_unlink(struct ucred *cred, struct shmfd *shmfd)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixshm_check_unlink, cred, shmfd,
     shmfd->shm_label);
 MAC_CHECK_PROBE2(posixshm_check_unlink, error, cred, shmfd);

 return (error);
}

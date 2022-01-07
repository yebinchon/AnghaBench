
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmfd {int shm_label; } ;
typedef int mode_t ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct shmfd*,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct shmfd*,int ,int ) ;
 int posixshm_check_setmode ;

int
mac_posixshm_check_setmode(struct ucred *cred, struct shmfd *shmfd, mode_t mode)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixshm_check_setmode, cred, shmfd,
     shmfd->shm_label, mode);
 MAC_CHECK_PROBE3(posixshm_check_setmode, error, cred, shmfd, mode);

 return (error);
}

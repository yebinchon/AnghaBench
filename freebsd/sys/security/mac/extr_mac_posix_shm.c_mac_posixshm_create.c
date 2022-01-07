
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmfd {int shm_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct shmfd*,int ) ;
 int posixshm_create ;

void
mac_posixshm_create(struct ucred *cred, struct shmfd *shmfd)
{

 MAC_POLICY_PERFORM_NOSLEEP(posixshm_create, cred, shmfd,
     shmfd->shm_label);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmid_kernel {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct shmid_kernel*,int ) ;
 int sysvshm_create ;

void
mac_sysvshm_create(struct ucred *cred, struct shmid_kernel *shmsegptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvshm_create, cred, shmsegptr,
     shmsegptr->label);
}

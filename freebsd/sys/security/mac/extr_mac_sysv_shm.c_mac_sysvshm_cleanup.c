
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,int ) ;
 int sysvshm_cleanup ;

void
mac_sysvshm_cleanup(struct shmid_kernel *shmsegptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvshm_cleanup, shmsegptr->label);
}

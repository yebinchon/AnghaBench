
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmid_kernel {int label; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct shmid_kernel*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct shmid_kernel*,int ,int) ;
 int sysvshm_check_shmget ;

int
mac_sysvshm_check_shmget(struct ucred *cred, struct shmid_kernel *shmsegptr,
    int shmflg)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvshm_check_shmget, cred, shmsegptr,
     shmsegptr->label, shmflg);
 MAC_CHECK_PROBE3(sysvshm_check_shmget, error, cred, shmsegptr,
     shmflg);

 return (error);
}

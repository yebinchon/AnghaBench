
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE1 (int ,int,struct ucred*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*) ;
 int kld_check_stat ;

int
mac_kld_check_stat(struct ucred *cred)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(kld_check_stat, cred);
 MAC_CHECK_PROBE1(kld_check_stat, error, cred);

 return (error);
}

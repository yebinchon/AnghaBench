
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE1 (int ,int,struct ucred*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*) ;
 int kenv_check_dump ;

int
mac_kenv_check_dump(struct ucred *cred)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(kenv_check_dump, cred);
 MAC_CHECK_PROBE1(kenv_check_dump, error, cred);

 return (error);
}

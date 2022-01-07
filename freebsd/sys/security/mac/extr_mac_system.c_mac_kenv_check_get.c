
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,char*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,char*) ;
 int kenv_check_get ;

int
mac_kenv_check_get(struct ucred *cred, char *name)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(kenv_check_get, cred, name);
 MAC_CHECK_PROBE2(kenv_check_get, error, cred, name);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,char*,char*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,char*,char*) ;
 int kenv_check_set ;

int
mac_kenv_check_set(struct ucred *cred, char *name, char *value)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(kenv_check_set, cred, name, value);
 MAC_CHECK_PROBE3(kenv_check_set, error, cred, name, value);

 return (error);
}

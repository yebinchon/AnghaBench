
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,char const*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,char const*) ;
 int posixshm_check_create ;

int
mac_posixshm_check_create(struct ucred *cred, const char *path)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixshm_check_create, cred, path);
 MAC_CHECK_PROBE2(posixshm_check_create, error, cred, path);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
typedef int gid_t ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,int,int *) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int,int *) ;
 int cred_check_setgroups ;

int
mac_cred_check_setgroups(struct ucred *cred, int ngroups, gid_t *gidset)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setgroups, cred, ngroups, gidset);
 MAC_CHECK_PROBE3(cred_check_setgroups, error, cred, ngroups, gidset);

 return (error);
}

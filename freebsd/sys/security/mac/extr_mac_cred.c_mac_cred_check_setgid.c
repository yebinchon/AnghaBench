
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
typedef int gid_t ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int ) ;
 int cred_check_setgid ;

int
mac_cred_check_setgid(struct ucred *cred, gid_t gid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setgid, cred, gid);
 MAC_CHECK_PROBE2(cred_check_setgid, error, cred, gid);

 return (error);
}

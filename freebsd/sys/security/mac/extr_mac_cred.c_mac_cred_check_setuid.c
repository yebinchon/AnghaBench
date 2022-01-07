
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int ) ;
 int cred_check_setuid ;

int
mac_cred_check_setuid(struct ucred *cred, uid_t uid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setuid, cred, uid);
 MAC_CHECK_PROBE2(cred_check_setuid, error, cred, uid);

 return (error);
}

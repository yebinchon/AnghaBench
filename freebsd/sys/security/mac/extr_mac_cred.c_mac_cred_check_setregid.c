
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
typedef int gid_t ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,int ,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int ,int ) ;
 int cred_check_setregid ;

int
mac_cred_check_setregid(struct ucred *cred, gid_t rgid, gid_t egid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setregid, cred, rgid, egid);
 MAC_CHECK_PROBE3(cred_check_setregid, error, cred, rgid, egid);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct sysctl_oid*,struct sysctl_req*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct sysctl_oid*,void*,int,struct sysctl_req*) ;
 int system_check_sysctl ;

int
mac_system_check_sysctl(struct ucred *cred, struct sysctl_oid *oidp,
    void *arg1, int arg2, struct sysctl_req *req)
{
 int error;





 MAC_POLICY_CHECK_NOSLEEP(system_check_sysctl, cred, oidp, arg1, arg2,
     req);
 MAC_CHECK_PROBE3(system_check_sysctl, error, cred, oidp, req);

 return (error);
}

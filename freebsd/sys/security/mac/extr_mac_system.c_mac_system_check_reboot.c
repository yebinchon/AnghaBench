
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int) ;
 int system_check_reboot ;

int
mac_system_check_reboot(struct ucred *cred, int howto)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(system_check_reboot, cred, howto);
 MAC_CHECK_PROBE2(system_check_reboot, error, cred, howto);

 return (error);
}

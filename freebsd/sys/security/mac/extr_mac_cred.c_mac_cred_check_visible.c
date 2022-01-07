
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct ucred*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct ucred*) ;
 int cred_check_visible ;

int
mac_cred_check_visible(struct ucred *cr1, struct ucred *cr2)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_visible, cr1, cr2);
 MAC_CHECK_PROBE2(cred_check_visible, error, cr1, cr2);

 return (error);
}

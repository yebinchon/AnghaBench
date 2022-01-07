
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int) ;
 int priv_check ;

int
mac_priv_check(struct ucred *cred, int priv)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(priv_check, cred, priv);
 MAC_CHECK_PROBE2(priv_check, error, cred, priv);

 return (error);
}

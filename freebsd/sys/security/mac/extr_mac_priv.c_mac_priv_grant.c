
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_GRANT_PROBE2 (int ,int,struct ucred*,int) ;
 int MAC_POLICY_GRANT_NOSLEEP (int ,struct ucred*,int) ;
 int priv_grant ;

int
mac_priv_grant(struct ucred *cred, int priv)
{
 int error;

 MAC_POLICY_GRANT_NOSLEEP(priv_grant, cred, priv);
 MAC_GRANT_PROBE2(priv_grant, error, cred, priv);

 return (error);
}

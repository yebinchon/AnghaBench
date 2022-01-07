
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int AF_INET ;
 int priv_netinet_ipsec_policy_entrust_setup_af (int,int,struct test*,int ) ;

int
priv_netinet_ipsec_policy4_entrust_setup(int asroot, int injail,
    struct test *test)
{

 return (priv_netinet_ipsec_policy_entrust_setup_af(asroot, injail, test,
     AF_INET));
}

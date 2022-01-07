
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int ENOMEM ;
 int EOPNOTSUPP ;


 int ipsec_initialized () ;
 int ipsec_support_disable (int ) ;
 int ipsec_support_enable (int ,int *) ;
 int ipv4_ipsec_support ;
 int ipv4_methods ;
 int ipv6_ipsec_support ;
 int ipv6_methods ;

__attribute__((used)) static int
ipsec_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:

  if (!ipsec_initialized())
   return (ENOMEM);
  break;
 case 128:
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}

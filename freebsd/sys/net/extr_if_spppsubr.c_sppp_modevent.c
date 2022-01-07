
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EACCES ;
 int EOPNOTSUPP ;
 int IFT_PPP ;


 int if_register_com_alloc (int ,int ,int ) ;
 int sppp_alloc ;
 int sppp_free ;

__attribute__((used)) static int
sppp_modevent(module_t mod, int type, void *unused)
{
 switch (type) {
 case 129:






  if_register_com_alloc(IFT_PPP, sppp_alloc, sppp_free);
  break;
 case 128:

  return EACCES;
 default:
  return EOPNOTSUPP;
 }
 return 0;
}

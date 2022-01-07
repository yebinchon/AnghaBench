
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int IFT_IEEE1394 ;


 int firewire_alloc ;
 int firewire_free ;
 int if_deregister_com_alloc (int ) ;
 int if_register_com_alloc (int ,int ,int ) ;

__attribute__((used)) static int
firewire_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  if_register_com_alloc(IFT_IEEE1394,
      firewire_alloc, firewire_free);
  break;
 case 128:
  if_deregister_com_alloc(IFT_IEEE1394);
  break;
 default:
  return (EOPNOTSUPP);
 }

 return (0);
}

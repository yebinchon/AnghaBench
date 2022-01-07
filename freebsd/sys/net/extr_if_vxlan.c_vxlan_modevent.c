
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int ENOTSUP ;


 int vxlan_load () ;
 int vxlan_unload () ;

__attribute__((used)) static int
vxlan_modevent(module_t mod, int type, void *unused)
{
 int error;

 error = 0;

 switch (type) {
 case 129:
  vxlan_load();
  break;
 case 128:
  vxlan_unload();
  break;
 default:
  error = ENOTSUP;
  break;
 }

 return (error);
}

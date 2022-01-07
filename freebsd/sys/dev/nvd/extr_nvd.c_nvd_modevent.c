
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int nvd_load () ;
 int nvd_unload () ;

__attribute__((used)) static int nvd_modevent(module_t mod, int type, void *arg)
{
 int error = 0;

 switch (type) {
 case 129:
  error = nvd_load();
  break;
 case 128:
  nvd_unload();
  break;
 default:
  break;
 }

 return (error);
}

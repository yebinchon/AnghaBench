
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int qlnxr_mod_load () ;
 int qlnxr_mod_unload () ;

__attribute__((used)) static int
qlnxr_event_handler(module_t mod, int event, void *arg)
{

 int ret = 0;

 switch (event) {

 case 129:
  ret = qlnxr_mod_load();
  break;

 case 128:
  ret = qlnxr_mod_unload();
  break;

 default:
  break;
 }

        return (ret);
}

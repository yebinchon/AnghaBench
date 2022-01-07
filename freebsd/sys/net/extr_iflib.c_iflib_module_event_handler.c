
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int iflib_module_init () ;

__attribute__((used)) static int
iflib_module_event_handler(module_t mod, int what, void *arg)
{
 int err;

 switch (what) {
 case 129:
  if ((err = iflib_module_init()) != 0)
   return (err);
  break;
 case 128:
  return (EBUSY);
 default:
  return (EOPNOTSUPP);
 }

 return (0);
}

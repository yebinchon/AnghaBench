
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int vesa_load () ;
 int vesa_unload () ;

__attribute__((used)) static int
vesa_mod_event(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  return (vesa_load());
 case 128:
  return (vesa_unload());
 }
 return (EOPNOTSUPP);
}

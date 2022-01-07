
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int MOD_LOAD ;
 int MOD_UNLOAD ;
 int toecore_load () ;
 int toecore_unload () ;

__attribute__((used)) static int
toecore_mod_handler(module_t mod, int cmd, void *arg)
{

 if (cmd == MOD_LOAD)
  return (toecore_load());

 if (cmd == MOD_UNLOAD)
  return (toecore_unload());

 return (EOPNOTSUPP);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int do_load_fw () ;
 int do_unload_fw () ;

__attribute__((used)) static int
module_handler(module_t mod, int what, void *arg)
{

 switch (what) {
 case 129:
  return (do_load_fw());
 case 128:
  return (do_unload_fw());
 }
 return (EOPNOTSUPP);
}

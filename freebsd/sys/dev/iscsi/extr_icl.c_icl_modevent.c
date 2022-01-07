
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int icl_load () ;
 int icl_unload () ;

__attribute__((used)) static int
icl_modevent(module_t mod, int what, void *arg)
{

 switch (what) {
 case 129:
  return (icl_load());
 case 128:
  return (icl_unload());
 default:
  return (EINVAL);
 }
}

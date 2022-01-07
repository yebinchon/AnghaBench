
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int icl_iser_load () ;
 int icl_iser_unload () ;

__attribute__((used)) static int
icl_iser_modevent(module_t mod, int what, void *arg)
{
 switch (what) {
 case 129:
  return (icl_iser_load());
 case 128:
  return (icl_iser_unload());
 default:
  return (EINVAL);
 }
}

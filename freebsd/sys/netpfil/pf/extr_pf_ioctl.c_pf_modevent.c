
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int pf_load () ;

__attribute__((used)) static int
pf_modevent(module_t mod, int type, void *data)
{
 int error = 0;

 switch(type) {
 case 129:
  error = pf_load();
  break;
 case 128:


  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}

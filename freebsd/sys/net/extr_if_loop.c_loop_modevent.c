
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int printf (char*) ;

__attribute__((used)) static int
loop_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  break;

 case 128:
  printf("loop module unload - not possible for this module type\n");
  return (EINVAL);

 default:
  return (EOPNOTSUPP);
 }
 return (0);
}

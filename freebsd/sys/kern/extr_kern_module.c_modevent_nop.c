
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;



__attribute__((used)) static int
modevent_nop(module_t mod, int what, void *arg)
{

 switch(what) {
 case 129:
  return (0);
 case 128:
  return (EBUSY);
 default:
  return (EOPNOTSUPP);
 }
}

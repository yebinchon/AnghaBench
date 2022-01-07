
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int INT_MAX ;


 int new_unrhdr (int ,int ,int *) ;
 int ueunit ;

__attribute__((used)) static int
uether_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  ueunit = new_unrhdr(0, INT_MAX, ((void*)0));
  break;
 case 128:
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}

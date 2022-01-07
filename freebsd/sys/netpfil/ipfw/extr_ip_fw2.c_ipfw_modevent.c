
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;





__attribute__((used)) static int
ipfw_modevent(module_t mod, int type, void *unused)
{
 int err = 0;

 switch (type) {
 case 131:


  break;
 case 130:

  break;
 case 128:

  break;
 case 129:

  break;
 default:
  err = EOPNOTSUPP;
  break;
 }
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;





__attribute__((used)) static int
acl_posix1e_modload(module_t mod, int what, void *arg)
{
 int ret;

 ret = 0;

 switch (what) {
 case 131:
 case 129:
  break;

 case 130:

  ret = 0;
  break;

 case 128:

  ret = 0;
  break;
 default:
  ret = EINVAL;
  break;
 }

 return (ret);
}

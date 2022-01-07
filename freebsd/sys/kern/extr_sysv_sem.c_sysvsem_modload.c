
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EINVAL ;



 int seminit () ;
 int semunload () ;

__attribute__((used)) static int
sysvsem_modload(struct module *module, int cmd, void *arg)
{
 int error = 0;

 switch (cmd) {
 case 130:
  error = seminit();
  if (error != 0)
   semunload();
  break;
 case 128:
  error = semunload();
  break;
 case 129:
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}

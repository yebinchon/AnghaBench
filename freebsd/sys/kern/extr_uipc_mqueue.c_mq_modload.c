
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;




 int mqinit () ;
 int mqunload () ;
 int vfs_modevent (struct module*,int,void*) ;

__attribute__((used)) static int
mq_modload(struct module *module, int cmd, void *arg)
{
 int error = 0;

 error = vfs_modevent(module, cmd, arg);
 if (error != 0)
  return (error);

 switch (cmd) {
 case 129:
  error = mqinit();
  if (error != 0)
   mqunload();
  break;
 case 128:
  error = mqunload();
  break;
 default:
  break;
 }
 return (error);
}

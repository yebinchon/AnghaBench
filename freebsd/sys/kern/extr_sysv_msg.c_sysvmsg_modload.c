
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EINVAL ;



 int msginit () ;
 int msgunload () ;

__attribute__((used)) static int
sysvmsg_modload(struct module *module, int cmd, void *arg)
{
 int error = 0;

 switch (cmd) {
 case 130:
  error = msginit();
  if (error != 0)
   msgunload();
  break;
 case 128:
  error = msgunload();
  break;
 case 129:
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}

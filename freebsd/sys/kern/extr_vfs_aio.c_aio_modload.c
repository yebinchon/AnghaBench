
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EOPNOTSUPP ;


 int aio_onceonly () ;

__attribute__((used)) static int
aio_modload(struct module *module, int cmd, void *arg)
{
 int error = 0;

 switch (cmd) {
 case 129:
  aio_onceonly();
  break;
 case 128:
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}

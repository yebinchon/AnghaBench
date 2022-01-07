
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int uni_msg_fini () ;
 int uni_msg_init () ;

__attribute__((used)) static int
ngatm_handler(module_t mod, int what, void *arg)
{
 int error = 0;

 switch (what) {

   case 129:
  uni_msg_init();
  break;

   case 128:
  uni_msg_fini();
  break;

   default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}

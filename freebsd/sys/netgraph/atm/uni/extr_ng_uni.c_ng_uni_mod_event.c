
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int uni_fini () ;
 int uni_init () ;

__attribute__((used)) static int
ng_uni_mod_event(module_t mod, int event, void *data)
{
 int error = 0;

 switch(event) {

   case 129:
  uni_init();
  break;

   case 128:
  uni_fini();
  break;

   default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}

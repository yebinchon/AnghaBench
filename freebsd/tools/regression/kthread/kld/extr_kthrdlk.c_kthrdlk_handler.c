
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int kthrdlk_done () ;
 int kthrdlk_init () ;
 int uprintf (char*) ;

__attribute__((used)) static int
kthrdlk_handler(module_t mod, int what,
                            void *arg)
{
 switch (what) {
  case 129:
   kthrdlk_init();
   uprintf("kthrdlk loaded!\n");
   return (0);
  case 128:
   kthrdlk_done();
   uprintf("Bye Bye! kthrdlk unloaded!\n");
   return (0);
 }

 return (EOPNOTSUPP);
}

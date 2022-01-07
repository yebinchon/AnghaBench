
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_watch {int dummy; } ;


 unsigned long long KB_TO_PAGE_SHIFT ;
 int XST_NIL ;
 int set_new_target (unsigned long long) ;
 int xs_scanf (int ,char*,char*,int *,char*,unsigned long long*) ;

__attribute__((used)) static void
watch_target(struct xs_watch *watch,
      const char **vec, unsigned int len)
{
 unsigned long long new_target;
 int err;

 err = xs_scanf(XST_NIL, "memory", "target", ((void*)0),
     "%llu", &new_target);
 if (err) {

  return;
 }





 set_new_target(new_target >> KB_TO_PAGE_SHIFT);
}

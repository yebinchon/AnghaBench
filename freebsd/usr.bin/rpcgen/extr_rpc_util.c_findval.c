
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * val; struct TYPE_3__* next; } ;
typedef TYPE_1__ list ;
typedef int definition ;


 int stub1 (int *,char const*) ;

definition *
findval(list *lst, const char *val, int (*cmp)(definition *, const char *))
{
 for (; lst != ((void*)0); lst = lst->next) {
  if ((*cmp) (lst->val, val)) {
   return (lst->val);
  }
 }
 return (((void*)0));
}

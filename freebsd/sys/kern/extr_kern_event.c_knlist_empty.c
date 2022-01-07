
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knlist {int kl_list; } ;


 int KNL_ASSERT_LOCKED (struct knlist*) ;
 int SLIST_EMPTY (int *) ;

int
knlist_empty(struct knlist *knl)
{

 KNL_ASSERT_LOCKED(knl);
 return (SLIST_EMPTY(&knl->kl_list));
}

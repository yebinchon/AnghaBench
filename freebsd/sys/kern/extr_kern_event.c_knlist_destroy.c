
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knlist {int dummy; } ;


 int KASSERT (int ,char*) ;
 int KNLIST_EMPTY (struct knlist*) ;

void
knlist_destroy(struct knlist *knl)
{

 KASSERT(KNLIST_EMPTY(knl),
     ("destroying knlist %p with knotes on it", knl));
}

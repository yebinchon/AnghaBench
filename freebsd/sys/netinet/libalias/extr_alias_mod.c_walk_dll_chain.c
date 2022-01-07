
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dll {int dummy; } ;


 struct dll* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int dll_chain ;
 int next ;

struct dll *
walk_dll_chain(void)
{
 struct dll *t;

 t = SLIST_FIRST(&dll_chain);
 if (t == ((void*)0))
  return (((void*)0));
 SLIST_REMOVE_HEAD(&dll_chain, next);
 return (t);
}

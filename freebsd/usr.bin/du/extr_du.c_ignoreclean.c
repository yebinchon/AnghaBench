
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ignentry {struct ignentry* mask; } ;


 int SLIST_EMPTY (int *) ;
 struct ignentry* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct ignentry*) ;
 int ignores ;
 int next ;

__attribute__((used)) static void
ignoreclean(void)
{
 struct ignentry *ign;

 while (!SLIST_EMPTY(&ignores)) {
  ign = SLIST_FIRST(&ignores);
  SLIST_REMOVE_HEAD(&ignores, next);
  free(ign->mask);
  free(ign);
 }
}

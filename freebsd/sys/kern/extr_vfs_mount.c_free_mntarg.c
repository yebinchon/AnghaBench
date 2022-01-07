
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntarg {struct mntarg* v; int list; } ;
struct mntaarg {struct mntaarg* v; int list; } ;


 int M_MOUNT ;
 int SLIST_EMPTY (int *) ;
 struct mntarg* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct mntarg*,int ) ;
 int next ;

__attribute__((used)) static void
free_mntarg(struct mntarg *ma)
{
 struct mntaarg *maa;

 while (!SLIST_EMPTY(&ma->list)) {
  maa = SLIST_FIRST(&ma->list);
  SLIST_REMOVE_HEAD(&ma->list, next);
  free(maa, M_MOUNT);
 }
 free(ma->v, M_MOUNT);
 free(ma, M_MOUNT);
}

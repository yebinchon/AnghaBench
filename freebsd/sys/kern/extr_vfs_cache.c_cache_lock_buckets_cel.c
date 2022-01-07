
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;
struct celockstate {struct rwlock** blp; } ;


 int MPASS (int ) ;
 int cache_sort_vnodes (struct rwlock**,struct rwlock**) ;
 int rw_wlock (struct rwlock*) ;

__attribute__((used)) static void
cache_lock_buckets_cel(struct celockstate *cel, struct rwlock *blp1,
    struct rwlock *blp2)
{

 MPASS(cel->blp[0] == ((void*)0));
 MPASS(cel->blp[1] == ((void*)0));

 cache_sort_vnodes(&blp1, &blp2);

 if (blp1 != ((void*)0)) {
  rw_wlock(blp1);
  cel->blp[0] = blp1;
 }
 rw_wlock(blp2);
 cel->blp[1] = blp2;
}

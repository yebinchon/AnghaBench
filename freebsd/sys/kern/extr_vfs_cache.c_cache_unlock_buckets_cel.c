
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct celockstate {int ** blp; } ;


 int rw_wunlock (int *) ;

__attribute__((used)) static void
cache_unlock_buckets_cel(struct celockstate *cel)
{

 if (cel->blp[0] != ((void*)0))
  rw_wunlock(cel->blp[0]);
 rw_wunlock(cel->blp[1]);
}

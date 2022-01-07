
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct celockstate {int dummy; } ;


 int cache_unlock_buckets_cel (struct celockstate*) ;
 int cache_unlock_vnodes_cel (struct celockstate*) ;

__attribute__((used)) static void
cache_enter_unlock(struct celockstate *cel)
{

 cache_unlock_buckets_cel(cel);
 cache_unlock_vnodes_cel(cel);
}

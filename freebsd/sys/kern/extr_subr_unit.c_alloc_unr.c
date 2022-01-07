
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int mtx; } ;


 int alloc_unrl (struct unrhdr*) ;
 int clean_unrhdrl (struct unrhdr*) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

int
alloc_unr(struct unrhdr *uh)
{
 int i;

 mtx_lock(uh->mtx);
 i = alloc_unrl(uh);
 clean_unrhdrl(uh);
 mtx_unlock(uh->mtx);
 return (i);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int mtx; } ;


 int clean_unrhdrl (struct unrhdr*) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

void
clean_unrhdr(struct unrhdr *uh)
{

 mtx_lock(uh->mtx);
 clean_unrhdrl(uh);
 mtx_unlock(uh->mtx);
}

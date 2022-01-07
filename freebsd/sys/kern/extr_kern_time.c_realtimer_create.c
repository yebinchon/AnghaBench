
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimer {int it_mtx; int it_callout; } ;


 int callout_init_mtx (int *,int *,int ) ;

__attribute__((used)) static int
realtimer_create(struct itimer *it)
{
 callout_init_mtx(&it->it_callout, &it->it_mtx, 0);
 return (0);
}

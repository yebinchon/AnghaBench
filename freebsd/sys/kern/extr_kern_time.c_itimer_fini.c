
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimer {int it_mtx; } ;


 int mtx_destroy (int *) ;

__attribute__((used)) static void
itimer_fini(void *mem, int size)
{
 struct itimer *it;

 it = (struct itimer *)mem;
 mtx_destroy(&it->it_mtx);
}

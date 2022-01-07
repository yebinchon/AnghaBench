
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimer {int it_mtx; } ;


 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
itimer_init(void *mem, int size, int flags)
{
 struct itimer *it;

 it = (struct itimer *)mem;
 mtx_init(&it->it_mtx, "itimer lock", ((void*)0), MTX_DEF);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipepair {int pp_mtx; } ;


 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int MTX_NEW ;
 int mtx_init (int *,char*,int *,int) ;

__attribute__((used)) static int
pipe_zone_init(void *mem, int size, int flags)
{
 struct pipepair *pp;

 KASSERT(size == sizeof(*pp), ("pipe_zone_init: wrong size"));

 pp = (struct pipepair *)mem;

 mtx_init(&pp->pp_mtx, "pipe mutex", ((void*)0), MTX_DEF | MTX_NEW);
 return (0);
}

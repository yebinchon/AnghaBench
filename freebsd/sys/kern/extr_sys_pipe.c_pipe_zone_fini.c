
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipepair {int pp_mtx; } ;


 int KASSERT (int,char*) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
pipe_zone_fini(void *mem, int size)
{
 struct pipepair *pp;

 KASSERT(size == sizeof(*pp), ("pipe_zone_fini: wrong size"));

 pp = (struct pipepair *)mem;

 mtx_destroy(&pp->pp_mtx);
}

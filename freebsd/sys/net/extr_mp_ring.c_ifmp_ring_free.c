
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmp_ring {int mt; int * abdications; int * restarts; int * stalls; int * starts; int * drops; int * enqueues; } ;


 int counter_u64_free (int *) ;
 int free (struct ifmp_ring*,int ) ;

void
ifmp_ring_free(struct ifmp_ring *r)
{

 if (r == ((void*)0))
  return;

 if (r->enqueues != ((void*)0))
  counter_u64_free(r->enqueues);
 if (r->drops != ((void*)0))
  counter_u64_free(r->drops);
 if (r->starts != ((void*)0))
  counter_u64_free(r->starts);
 if (r->stalls != ((void*)0))
  counter_u64_free(r->stalls);
 if (r->restarts != ((void*)0))
  counter_u64_free(r->restarts);
 if (r->abdications != ((void*)0))
  counter_u64_free(r->abdications);

 free(r, r->mt);
}

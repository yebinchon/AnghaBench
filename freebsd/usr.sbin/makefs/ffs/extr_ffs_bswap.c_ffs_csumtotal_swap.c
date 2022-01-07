
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csum_total {void* cs_nffree; void* cs_nifree; void* cs_nbfree; void* cs_ndir; } ;


 void* bswap64 (void*) ;

void
ffs_csumtotal_swap(struct csum_total *o, struct csum_total *n)
{
 n->cs_ndir = bswap64(o->cs_ndir);
 n->cs_nbfree = bswap64(o->cs_nbfree);
 n->cs_nifree = bswap64(o->cs_nifree);
 n->cs_nffree = bswap64(o->cs_nffree);
}

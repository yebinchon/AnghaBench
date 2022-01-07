
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ uint64_t ;
struct octeon_device {int dummy; } ;
struct lio_sg_entry {int dummy; } ;
struct lio_gather {int node; scalar_t__ sg_dma_ptr; struct lio_sg_entry* sg; } ;
struct lio {int glist_entry_size; int tx_qsize; int * ghead; scalar_t__* glists_dma_base; int ** glists_virt_base; int * glist_lock; } ;


 int LIO_MAX_SG ;
 int LIO_SG_ENTRY_SIZE ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ROUNDUP4 (int ) ;
 int ROUNDUP8 (int) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int entries ;
 int free (void*,int ) ;
 int lio_delete_glists (struct octeon_device*,struct lio*) ;
 int * lio_dma_alloc (int,int *) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
lio_setup_glists(struct octeon_device *oct, struct lio *lio, int num_iqs)
{
 struct lio_gather *g;
 int i, j;

 lio->glist_lock = malloc(num_iqs * sizeof(*lio->glist_lock), M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (lio->glist_lock == ((void*)0))
  return (1);

 lio->ghead = malloc(num_iqs * sizeof(*lio->ghead), M_DEVBUF,
       M_NOWAIT | M_ZERO);
 if (lio->ghead == ((void*)0)) {
  free((void *)lio->glist_lock, M_DEVBUF);
  lio->glist_lock = ((void*)0);
  return (1);
 }

 lio->glist_entry_size = ROUNDUP8((ROUNDUP4(LIO_MAX_SG) >> 2) *
      LIO_SG_ENTRY_SIZE);




 lio->glists_virt_base = malloc(num_iqs * sizeof(void *), M_DEVBUF,
           M_NOWAIT | M_ZERO);
 lio->glists_dma_base = malloc(num_iqs * sizeof(vm_paddr_t), M_DEVBUF,
          M_NOWAIT | M_ZERO);
 if ((lio->glists_virt_base == ((void*)0)) || (lio->glists_dma_base == ((void*)0))) {
  lio_delete_glists(oct, lio);
  return (1);
 }

 for (i = 0; i < num_iqs; i++) {
  mtx_init(&lio->glist_lock[i], "glist_lock", ((void*)0), MTX_DEF);

  STAILQ_INIT(&lio->ghead[i]);

  lio->glists_virt_base[i] =
      lio_dma_alloc(lio->glist_entry_size * lio->tx_qsize,
      (vm_paddr_t *)&lio->glists_dma_base[i]);
  if (lio->glists_virt_base[i] == ((void*)0)) {
   lio_delete_glists(oct, lio);
   return (1);
  }

  for (j = 0; j < lio->tx_qsize; j++) {
   g = malloc(sizeof(*g), M_DEVBUF, M_NOWAIT | M_ZERO);
   if (g == ((void*)0))
    break;

   g->sg = (struct lio_sg_entry *)(uintptr_t)
       ((uint64_t)(uintptr_t)lio->glists_virt_base[i] +
        (j * lio->glist_entry_size));
   g->sg_dma_ptr = (uint64_t)lio->glists_dma_base[i] +
    (j * lio->glist_entry_size);
   STAILQ_INSERT_TAIL(&lio->ghead[i], &g->node, entries);
  }

  if (j != lio->tx_qsize) {
   lio_delete_glists(oct, lio);
   return (1);
  }
 }

 return (0);
}

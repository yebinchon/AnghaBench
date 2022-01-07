
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int head; int alloc_buf_count; int lock; } ;
struct octeon_device {TYPE_1__ sc_buf_pool; } ;
struct lio_soft_command {int node; int size; scalar_t__ dma_addr; } ;


 int LIO_MAX_SOFT_COMMAND_BUFFERS ;
 int LIO_SOFT_COMMAND_BUFFER_SIZE ;
 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int atomic_store_rel_int (int *,int ) ;
 int entries ;
 scalar_t__ lio_dma_alloc (int ,int *) ;
 int lio_free_sc_buffer_pool (struct octeon_device*) ;
 int mtx_init (int *,char*,int *,int ) ;

int
lio_setup_sc_buffer_pool(struct octeon_device *oct)
{
 struct lio_soft_command *sc;
 uint64_t dma_addr;
 int i;

 STAILQ_INIT(&oct->sc_buf_pool.head);
 mtx_init(&oct->sc_buf_pool.lock, "sc_pool_lock", ((void*)0), MTX_DEF);
 atomic_store_rel_int(&oct->sc_buf_pool.alloc_buf_count, 0);

 for (i = 0; i < LIO_MAX_SOFT_COMMAND_BUFFERS; i++) {
  sc = (struct lio_soft_command *)
   lio_dma_alloc(LIO_SOFT_COMMAND_BUFFER_SIZE, (vm_paddr_t *)&dma_addr);
  if (sc == ((void*)0)) {
   lio_free_sc_buffer_pool(oct);
   return (1);
  }

  sc->dma_addr = dma_addr;
  sc->size = LIO_SOFT_COMMAND_BUFFER_SIZE;

  STAILQ_INSERT_TAIL(&oct->sc_buf_pool.head, &sc->node, entries);
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ISCI_MEMORY {int error; int physical_address; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int isci_log_message (int ,char*,char*) ;

void
isci_allocate_dma_buffer_callback(void *arg, bus_dma_segment_t *seg,
    int nseg, int error)
{
 struct ISCI_MEMORY *memory = (struct ISCI_MEMORY *)arg;

 memory->error = error;

 if (nseg != 1 || error != 0)
  isci_log_message(0, "ISCI",
      "Failed to allocate physically contiguous memory!\n");
 else
  memory->physical_address = seg->ds_addr;
}

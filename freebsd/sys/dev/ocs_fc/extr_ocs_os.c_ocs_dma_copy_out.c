
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ len; int virt; } ;
typedef TYPE_1__ ocs_dma_t ;
typedef int int32_t ;


 int ocs_memcpy (void*,int ,scalar_t__) ;

int32_t
ocs_dma_copy_out(ocs_dma_t *dma, void *buffer, uint32_t buffer_length)
{
 if (!dma)
  return -1;
 if (!buffer)
  return -1;
 if (buffer_length == 0)
  return 0;
 if (buffer_length > dma->len)
  buffer_length = dma->len;
 ocs_memcpy(buffer, dma->virt, buffer_length);
 return buffer_length;
}

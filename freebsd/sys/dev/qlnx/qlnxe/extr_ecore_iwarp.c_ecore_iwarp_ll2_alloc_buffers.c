
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_iwarp_ll2_buff {int buff_size; int data; int data_phys_addr; } ;
struct ecore_hwfn {int p_dev; } ;


 int DP_INFO (struct ecore_hwfn*,char*) ;
 int ECORE_NOMEM ;
 int GFP_KERNEL ;
 int OSAL_DMA_ALLOC_COHERENT (int ,int *,int) ;
 int OSAL_FREE (int ,struct ecore_iwarp_ll2_buff*) ;
 struct ecore_iwarp_ll2_buff* OSAL_ZALLOC (int ,int ,int) ;
 int ecore_iwarp_ll2_post_rx (struct ecore_hwfn*,struct ecore_iwarp_ll2_buff*,int ) ;

__attribute__((used)) static int
ecore_iwarp_ll2_alloc_buffers(struct ecore_hwfn *p_hwfn,
         int num_rx_bufs,
         int buff_size,
         u8 ll2_handle)
{
 struct ecore_iwarp_ll2_buff *buffer;
 int rc = 0;
 int i;

 for (i = 0; i < num_rx_bufs; i++) {
  buffer = OSAL_ZALLOC(p_hwfn->p_dev,
         GFP_KERNEL, sizeof(*buffer));
  if (!buffer) {
   DP_INFO(p_hwfn, "Failed to allocate LL2 buffer desc\n");
   break;
  }

  buffer->data =
   OSAL_DMA_ALLOC_COHERENT(p_hwfn->p_dev,
      &buffer->data_phys_addr,
      buff_size);

  if (!buffer->data) {
   DP_INFO(p_hwfn, "Failed to allocate LL2 buffers\n");
   OSAL_FREE(p_hwfn->p_dev, buffer);
   rc = ECORE_NOMEM;
   break;
  }

  buffer->buff_size = buff_size;
  rc = ecore_iwarp_ll2_post_rx(p_hwfn, buffer, ll2_handle);

  if (rc)
   break;
 }
 return rc;
}

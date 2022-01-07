
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ecore_ooo_buffer {int rx_buffer_size; void* rx_buffer_virt_addr; int rx_buffer_phys_addr; } ;
struct TYPE_2__ {scalar_t__ conn_type; int rx_num_ooo_buffers; int rx_num_desc; } ;
struct ecore_ll2_info {TYPE_1__ input; } ;
struct ecore_hwfn {int p_ooo_info; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int) ;
 int ECORE_INVAL ;
 scalar_t__ ECORE_LL2_TYPE_OOO ;
 int ECORE_MSG_LL2 ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int ETH_CACHE_LINE_SIZE ;
 int GFP_KERNEL ;
 void* OSAL_DMA_ALLOC_COHERENT (int ,int *,int) ;
 int OSAL_FREE (int ,struct ecore_ooo_buffer*) ;
 struct ecore_ooo_buffer* OSAL_NULL ;
 struct ecore_ooo_buffer* OSAL_ZALLOC (int ,int ,int) ;
 int ecore_ooo_put_free_buffer (int ,struct ecore_ooo_buffer*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_ll2_acquire_connection_ooo(struct ecore_hwfn *p_hwfn,
     struct ecore_ll2_info *p_ll2_info, u16 mtu)
{
 struct ecore_ooo_buffer *p_buf = OSAL_NULL;
 u32 rx_buffer_size = 0;
 void *p_virt;
 u16 buf_idx;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 if (p_ll2_info->input.conn_type != ECORE_LL2_TYPE_OOO)
  return rc;


 if (!p_ll2_info->input.rx_num_ooo_buffers) {
  u16 num_desc = p_ll2_info->input.rx_num_desc;

  if (!num_desc)
   return ECORE_INVAL;
  p_ll2_info->input.rx_num_ooo_buffers = num_desc * 2;
 }


 rx_buffer_size = mtu + 14 + 4 + 8 + ETH_CACHE_LINE_SIZE;
 rx_buffer_size = (rx_buffer_size + ETH_CACHE_LINE_SIZE - 1) &
    ~(ETH_CACHE_LINE_SIZE - 1);

 for (buf_idx = 0; buf_idx < p_ll2_info->input.rx_num_ooo_buffers;
      buf_idx++) {
  p_buf = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_buf));
  if (!p_buf) {
   DP_NOTICE(p_hwfn, 0,
      "Failed to allocate ooo descriptor\n");
   rc = ECORE_NOMEM;
   goto out;
  }

  p_buf->rx_buffer_size = rx_buffer_size;
  p_virt = OSAL_DMA_ALLOC_COHERENT(p_hwfn->p_dev,
       &p_buf->rx_buffer_phys_addr,
       p_buf->rx_buffer_size);
  if (!p_virt) {
   DP_NOTICE(p_hwfn, 0,
      "Failed to allocate ooo buffer\n");
   OSAL_FREE(p_hwfn->p_dev, p_buf);
   rc = ECORE_NOMEM;
   goto out;
  }
  p_buf->rx_buffer_virt_addr = p_virt;
  ecore_ooo_put_free_buffer(p_hwfn->p_ooo_info, p_buf);
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_LL2,
     "Allocated [%04x] LL2 OOO buffers [each of size 0x%08x]\n",
     p_ll2_info->input.rx_num_ooo_buffers, rx_buffer_size);

out:
 return rc;
}

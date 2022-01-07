
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ecore_iwarp_ll2_buff {scalar_t__ buff_size; int data_phys_addr; int data; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int,int ) ;
 int OSAL_DMA_FREE_COHERENT (int ,int ,int ,scalar_t__) ;
 int OSAL_FREE (int ,struct ecore_iwarp_ll2_buff*) ;
 int ecore_ll2_post_rx_buffer (struct ecore_hwfn*,int ,int ,int ,struct ecore_iwarp_ll2_buff*,int) ;

__attribute__((used)) static int
ecore_iwarp_ll2_post_rx(struct ecore_hwfn *p_hwfn,
   struct ecore_iwarp_ll2_buff *buf,
   u8 handle)
{
 enum _ecore_status_t rc;

 rc = ecore_ll2_post_rx_buffer(
  p_hwfn,
  handle,
  buf->data_phys_addr,
  (u16)buf->buff_size,
  buf, 1);

 if (rc) {
  DP_NOTICE(p_hwfn, 0,
     "Failed to repost rx buffer to ll2 rc = %d, handle=%d\n",
     rc, handle);
  OSAL_DMA_FREE_COHERENT(
   p_hwfn->p_dev,
   buf->data,
   buf->data_phys_addr,
   buf->buff_size);
  OSAL_FREE(p_hwfn->p_dev, buf);
 }

 return rc;
}

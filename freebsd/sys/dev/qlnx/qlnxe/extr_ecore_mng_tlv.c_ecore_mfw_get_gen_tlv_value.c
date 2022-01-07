
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ecore_tlv_parsed_buf {int* data; int* p_val; } ;
struct TYPE_2__ {int lso_supported; int ipv4_csum_offload; int b_set; } ;
struct ecore_mfw_tlv_generic {int** mac; int tx_bytes; int tx_bytes_set; int tx_frames; int tx_frames_set; int rx_bytes; int rx_bytes_set; int rx_frames; int rx_frames_set; int * mac_set; TYPE_1__ flags; } ;
struct ecore_drv_tlv_hdr {int tlv_type; } ;
 int ECORE_TLV_DATA_MAX ;
 int OSAL_MEM_ZERO (int*,int) ;

__attribute__((used)) static int
ecore_mfw_get_gen_tlv_value(struct ecore_drv_tlv_hdr *p_tlv,
       struct ecore_mfw_tlv_generic *p_drv_buf,
       struct ecore_tlv_parsed_buf *p_buf)
{
 switch (p_tlv->tlv_type) {
 case 133:
  if (p_drv_buf->flags.b_set) {
   OSAL_MEM_ZERO(p_buf->data,
          sizeof(u8) * ECORE_TLV_DATA_MAX);
   p_buf->data[0] = p_drv_buf->flags.ipv4_csum_offload ?
      1 : 0;
   p_buf->data[0] |= (p_drv_buf->flags.lso_supported ?
        1 : 0) << 1;
   p_buf->p_val = p_buf->data;
   return 2;
  }
  break;

 case 132:
 case 135:
 case 134:
 {
  int idx = p_tlv->tlv_type - 132;

  if (p_drv_buf->mac_set[idx]) {
   p_buf->p_val = p_drv_buf->mac[idx];
   return 6;
  }
  break;
 }

 case 130:
  if (p_drv_buf->rx_frames_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->rx_frames;
   return sizeof(p_drv_buf->rx_frames);
  }
  break;
 case 131:
  if (p_drv_buf->rx_bytes_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->rx_bytes;
   return sizeof(p_drv_buf->rx_bytes);
  }
  break;
 case 128:
  if (p_drv_buf->tx_frames_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->tx_frames;
   return sizeof(p_drv_buf->tx_frames);
  }
  break;
 case 129:
  if (p_drv_buf->tx_bytes_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->tx_bytes;
   return sizeof(p_drv_buf->tx_bytes);
  }
  break;
 default:
  break;
 }

 return -1;
}

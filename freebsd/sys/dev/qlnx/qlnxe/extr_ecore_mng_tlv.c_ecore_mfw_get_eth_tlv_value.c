
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_tlv_parsed_buf {int * p_val; } ;
struct ecore_mfw_tlv_eth {int num_rxqs_full; int num_rxqs_full_set; int num_txqs_full; int num_txqs_full_set; int rxqs_empty; int rxqs_empty_set; int txqs_empty; int txqs_empty_set; int iov_offload; int iov_offload_set; int rx_descr_qdepth; int rx_descr_qdepth_set; int tx_descr_qdepth; int tx_descr_qdepth_set; int tcp6_offloads; int tcp6_offloads_set; int tcp4_offloads; int tcp4_offloads_set; int netq_count; int netq_count_set; int rx_descr_size; int rx_descr_size_set; int tx_descr_size; int tx_descr_size_set; int prom_mode; int prom_mode_set; int lso_minseg_size; int lso_minseg_size_set; int lso_maxoff_size; int lso_maxoff_size_set; } ;
struct ecore_drv_tlv_hdr {int tlv_type; } ;
__attribute__((used)) static int
ecore_mfw_get_eth_tlv_value(struct ecore_drv_tlv_hdr *p_tlv,
       struct ecore_mfw_tlv_eth *p_drv_buf,
       struct ecore_tlv_parsed_buf *p_buf)
{
 switch (p_tlv->tlv_type) {
 case 141:
  if (p_drv_buf->lso_maxoff_size_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->lso_maxoff_size;
   return sizeof(p_drv_buf->lso_maxoff_size);
  }
  break;
 case 140:
  if (p_drv_buf->lso_minseg_size_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->lso_minseg_size;
   return sizeof(p_drv_buf->lso_minseg_size);
  }
  break;
 case 136:
  if (p_drv_buf->prom_mode_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->prom_mode;
   return sizeof(p_drv_buf->prom_mode);
  }
  break;
 case 131:
  if (p_drv_buf->tx_descr_size_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->tx_descr_size;
   return sizeof(p_drv_buf->tx_descr_size);
  }
  break;
 case 134:
  if (p_drv_buf->rx_descr_size_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->rx_descr_size;
   return sizeof(p_drv_buf->rx_descr_size);
  }
  break;
 case 137:
  if (p_drv_buf->netq_count_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->netq_count;
   return sizeof(p_drv_buf->netq_count);
  }
  break;
 case 139:
  if (p_drv_buf->tcp4_offloads_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->tcp4_offloads;
   return sizeof(p_drv_buf->tcp4_offloads);
  }
  break;
 case 138:
  if (p_drv_buf->tcp6_offloads_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->tcp6_offloads;
   return sizeof(p_drv_buf->tcp6_offloads);
  }
  break;
 case 130:
  if (p_drv_buf->tx_descr_qdepth_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->tx_descr_qdepth;
   return sizeof(p_drv_buf->tx_descr_qdepth);
  }
  break;
 case 135:
  if (p_drv_buf->rx_descr_qdepth_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->rx_descr_qdepth;
   return sizeof(p_drv_buf->rx_descr_qdepth);
  }
  break;
 case 142:
  if (p_drv_buf->iov_offload_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->iov_offload;
   return sizeof(p_drv_buf->iov_offload);
  }
  break;
 case 129:
  if (p_drv_buf->txqs_empty_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->txqs_empty;
   return sizeof(p_drv_buf->txqs_empty);
  }
  break;
 case 133:
  if (p_drv_buf->rxqs_empty_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->rxqs_empty;
   return sizeof(p_drv_buf->rxqs_empty);
  }
  break;
 case 128:
  if (p_drv_buf->num_txqs_full_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->num_txqs_full;
   return sizeof(p_drv_buf->num_txqs_full);
  }
  break;
 case 132:
  if (p_drv_buf->num_rxqs_full_set) {
   p_buf->p_val = (u8 *)&p_drv_buf->num_rxqs_full;
   return sizeof(p_drv_buf->num_rxqs_full);
  }
  break;
 default:
  break;
 }

 return -1;
}

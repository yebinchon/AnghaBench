
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct unaligned_opaque_data {int first_mpa_offset; int tcp_payload_offset; } ;
struct ecore_iwarp_ll2_buff {int data_phys_addr; scalar_t__ data; } ;
struct ecore_iwarp_fpdu {int pkt_hdr; int mpa_frag; int* mpa_frag_virt; int incomplete_bytes; int fpdu_length; int mpa_frag_len; int pkt_hdr_size; struct ecore_iwarp_ll2_buff* mpa_buf; } ;


 int ECORE_IWARP_INVALID_FPDU_LENGTH ;

__attribute__((used)) static void
ecore_iwarp_init_fpdu(struct ecore_iwarp_ll2_buff *buf,
        struct ecore_iwarp_fpdu *fpdu,
        struct unaligned_opaque_data *pkt_data,
        u16 tcp_payload_size, u8 placement_offset)
{
 fpdu->mpa_buf = buf;
 fpdu->pkt_hdr = buf->data_phys_addr + placement_offset;
 fpdu->pkt_hdr_size = pkt_data->tcp_payload_offset;

 fpdu->mpa_frag = buf->data_phys_addr + pkt_data->first_mpa_offset;
 fpdu->mpa_frag_virt = (u8 *)(buf->data) + pkt_data->first_mpa_offset;

 if (tcp_payload_size == 1)
  fpdu->incomplete_bytes = ECORE_IWARP_INVALID_FPDU_LENGTH;
 else if (tcp_payload_size < fpdu->fpdu_length)
  fpdu->incomplete_bytes = fpdu->fpdu_length - tcp_payload_size;
 else
  fpdu->incomplete_bytes = 0;

 fpdu->mpa_frag_len = fpdu->fpdu_length - fpdu->incomplete_bytes;
}

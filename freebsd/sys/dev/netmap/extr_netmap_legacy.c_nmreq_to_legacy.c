
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_vale_newif {int nr_mem_id; int nr_rx_rings; int nr_tx_rings; int nr_rx_slots; int nr_tx_slots; } ;
struct nmreq_vale_list {int nr_port_idx; int nr_bridge_idx; } ;
struct nmreq_register {int dummy; } ;
struct nmreq_vale_attach {struct nmreq_register reg; } ;
struct nmreq_port_info_get {int nr_mem_id; int nr_rx_rings; int nr_tx_rings; int nr_rx_slots; int nr_tx_slots; int nr_memsize; } ;
struct nmreq_port_hdr {int nr_hdr_len; } ;
struct nmreq_header {int nr_reqtype; int nr_body; int nr_name; } ;
struct nmreq {int nr_arg2; int nr_rx_rings; int nr_tx_rings; int nr_rx_slots; int nr_tx_slots; int nr_arg1; int nr_name; int nr_memsize; } ;
 int nmreq_register_to_legacy (struct nmreq_register*,struct nmreq*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
nmreq_to_legacy(struct nmreq_header *hdr, struct nmreq *nmr)
{
 int ret = 0;



 switch (hdr->nr_reqtype) {
 case 135: {
  struct nmreq_register *req =
   (struct nmreq_register *)(uintptr_t)hdr->nr_body;
  nmreq_register_to_legacy(req, nmr);
  break;
 }
 case 136: {
  struct nmreq_port_info_get *req =
   (struct nmreq_port_info_get *)(uintptr_t)hdr->nr_body;
  nmr->nr_memsize = req->nr_memsize;
  nmr->nr_tx_slots = req->nr_tx_slots;
  nmr->nr_rx_slots = req->nr_rx_slots;
  nmr->nr_tx_rings = req->nr_tx_rings;
  nmr->nr_rx_rings = req->nr_rx_rings;
  nmr->nr_arg2 = req->nr_mem_id;
  break;
 }
 case 134: {
  struct nmreq_vale_attach *req =
   (struct nmreq_vale_attach *)(uintptr_t)hdr->nr_body;
  nmreq_register_to_legacy(&req->reg, nmr);
  break;
 }
 case 132: {
  break;
 }
 case 131: {
  struct nmreq_vale_list *req =
   (struct nmreq_vale_list *)(uintptr_t)hdr->nr_body;
  strlcpy(nmr->nr_name, hdr->nr_name, sizeof(nmr->nr_name));
  nmr->nr_arg1 = req->nr_bridge_idx;
  nmr->nr_arg2 = req->nr_port_idx;
  break;
 }
 case 137:
 case 138: {
  struct nmreq_port_hdr *req =
   (struct nmreq_port_hdr *)(uintptr_t)hdr->nr_body;
  nmr->nr_arg1 = req->nr_hdr_len;
  break;
 }
 case 130: {
  struct nmreq_vale_newif *req =
   (struct nmreq_vale_newif *)(uintptr_t)hdr->nr_body;
  nmr->nr_tx_slots = req->nr_tx_slots;
  nmr->nr_rx_slots = req->nr_rx_slots;
  nmr->nr_tx_rings = req->nr_tx_rings;
  nmr->nr_rx_rings = req->nr_rx_rings;
  nmr->nr_arg2 = req->nr_mem_id;
  break;
 }
 case 133:
 case 128:
 case 129: {
  break;
 }
 }

 return ret;
}

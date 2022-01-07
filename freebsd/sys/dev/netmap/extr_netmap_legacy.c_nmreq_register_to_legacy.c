
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_register {int nr_extra_bufs; int nr_mem_id; int nr_rx_rings; int nr_tx_rings; int nr_rx_slots; int nr_tx_slots; int nr_memsize; int nr_offset; } ;
struct nmreq {int nr_arg3; int nr_arg2; int nr_rx_rings; int nr_tx_rings; int nr_rx_slots; int nr_tx_slots; int nr_memsize; int nr_offset; } ;



__attribute__((used)) static void
nmreq_register_to_legacy(const struct nmreq_register *req, struct nmreq *nmr)
{
 nmr->nr_offset = req->nr_offset;
 nmr->nr_memsize = req->nr_memsize;
 nmr->nr_tx_slots = req->nr_tx_slots;
 nmr->nr_rx_slots = req->nr_rx_slots;
 nmr->nr_tx_rings = req->nr_tx_rings;
 nmr->nr_rx_rings = req->nr_rx_rings;
 nmr->nr_arg2 = req->nr_mem_id;
 nmr->nr_arg3 = req->nr_extra_bufs;
}

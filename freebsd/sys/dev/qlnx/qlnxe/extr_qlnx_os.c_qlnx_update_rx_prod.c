
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct qlnx_rx_queue {int hw_rxq_prod_addr; int rx_comp_ring; int rx_bd_ring; } ;
struct eth_rx_prod_data {void* cqe_prod; void* bd_prod; } ;
struct ecore_hwfn {int dummy; } ;
typedef int rx_prods ;


 int ecore_chain_get_prod_idx (int *) ;
 void* htole16 (int ) ;
 int internal_ram_wr (struct ecore_hwfn*,int ,int,int *) ;
 int wmb () ;

__attribute__((used)) static void
qlnx_update_rx_prod(struct ecore_hwfn *p_hwfn, struct qlnx_rx_queue *rxq)
{

        uint16_t bd_prod;
        uint16_t cqe_prod;
 union {
  struct eth_rx_prod_data rx_prod_data;
  uint32_t data32;
 } rx_prods;

        bd_prod = ecore_chain_get_prod_idx(&rxq->rx_bd_ring);
        cqe_prod = ecore_chain_get_prod_idx(&rxq->rx_comp_ring);


        rx_prods.rx_prod_data.bd_prod = htole16(bd_prod);
        rx_prods.rx_prod_data.cqe_prod = htole16(cqe_prod);





 wmb();

        internal_ram_wr(p_hwfn, rxq->hw_rxq_prod_addr,
  sizeof(rx_prods), &rx_prods.data32);







        wmb();

 return;
}

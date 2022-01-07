
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct bwn_pio_rxqueue {scalar_t__ prq_base; int prq_mac; } ;


 int BWN_WRITE_4 (int ,scalar_t__,int ) ;

__attribute__((used)) static void
bwn_pio_rx_write_4(struct bwn_pio_rxqueue *prq, uint16_t offset, uint32_t value)
{

 BWN_WRITE_4(prq->prq_mac, prq->prq_base + offset, value);
}

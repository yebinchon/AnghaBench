
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwn_pio_rxqueue {scalar_t__ prq_base; int prq_mac; } ;


 scalar_t__ BWN_READ_2 (int ,scalar_t__) ;

__attribute__((used)) static uint16_t
bwn_pio_rx_read_2(struct bwn_pio_rxqueue *prq, uint16_t offset)
{

 return (BWN_READ_2(prq->prq_mac, prq->prq_base + offset));
}

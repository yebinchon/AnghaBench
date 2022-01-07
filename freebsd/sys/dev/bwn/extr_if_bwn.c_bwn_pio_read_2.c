
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwn_pio_txqueue {scalar_t__ tq_base; } ;
struct bwn_mac {int dummy; } ;


 scalar_t__ BWN_READ_2 (struct bwn_mac*,scalar_t__) ;

__attribute__((used)) static uint16_t
bwn_pio_read_2(struct bwn_mac *mac, struct bwn_pio_txqueue *tq,
    uint16_t offset)
{

 return (BWN_READ_2(mac, tq->tq_base + offset));
}

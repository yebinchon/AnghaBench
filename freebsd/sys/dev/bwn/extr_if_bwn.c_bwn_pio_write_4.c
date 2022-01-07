
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct bwn_pio_txqueue {scalar_t__ tq_base; } ;
struct bwn_mac {int dummy; } ;


 int BWN_WRITE_4 (struct bwn_mac*,scalar_t__,int ) ;

__attribute__((used)) static void
bwn_pio_write_4(struct bwn_mac *mac, struct bwn_pio_txqueue *tq,
    uint16_t offset, uint32_t value)
{

 BWN_WRITE_4(mac, tq->tq_base + offset, value);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ usb_checksum; } ;
struct rtwn_tx_desc_common {TYPE_1__ txdw7; } ;


 scalar_t__ rtwn_usb_calc_tx_checksum (struct rtwn_tx_desc_common*) ;

__attribute__((used)) static void
rtwn_usb_tx_checksum(struct rtwn_tx_desc_common *txd)
{
 txd->txdw7.usb_checksum = 0;
 txd->txdw7.usb_checksum = rtwn_usb_calc_tx_checksum(txd);
}

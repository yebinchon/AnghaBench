
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t3_rx_mode {TYPE_1__* port; } ;
struct t3_mcaddr_ctx {int hash_lo; int hash_hi; struct cmac* mac; } ;
struct cmac {unsigned int offset; int promisc_map; int ext_port; scalar_t__ multiport; int * adapter; } ;
typedef int adapter_t ;
struct TYPE_2__ {int ifp; } ;


 scalar_t__ A_XGM_RX_CFG ;
 scalar_t__ A_XGM_RX_HASH_HIGH ;
 scalar_t__ A_XGM_RX_HASH_LOW ;
 int F_COPYALLFRAMES ;
 scalar_t__ allmulti_rx_mode (struct t3_rx_mode*) ;
 int if_foreach_llmaddr (int ,int ,struct t3_mcaddr_ctx*) ;
 scalar_t__ promisc_rx_mode (struct t3_rx_mode*) ;
 int t3_hash_maddr ;
 int t3_set_reg_field (int *,scalar_t__,int ,int ) ;
 int t3_write_reg (int *,scalar_t__,int) ;

int t3_mac_set_rx_mode(struct cmac *mac, struct t3_rx_mode *rm)
{
 struct t3_mcaddr_ctx ctx;
 adapter_t *adap = mac->adapter;
 unsigned int oft = mac->offset;

 if (promisc_rx_mode(rm))
  mac->promisc_map |= 1 << mac->ext_port;
 else
  mac->promisc_map &= ~(1 << mac->ext_port);
 t3_set_reg_field(adap, A_XGM_RX_CFG + oft, F_COPYALLFRAMES,
    mac->promisc_map ? F_COPYALLFRAMES : 0);

 if (allmulti_rx_mode(rm) || mac->multiport)
  ctx.hash_lo = ctx.hash_hi = 0xffffffff;
 else {
  ctx.mac = mac;
  ctx.hash_lo = ctx.hash_hi = 0;
  if_foreach_llmaddr(rm->port->ifp, t3_hash_maddr, &ctx);
 }

 t3_write_reg(adap, A_XGM_RX_HASH_LOW + oft, ctx.hash_lo);
 t3_write_reg(adap, A_XGM_RX_HASH_HIGH + oft, ctx.hash_hi);
 return 0;
}

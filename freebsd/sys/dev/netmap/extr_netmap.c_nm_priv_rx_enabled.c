
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv_d {scalar_t__* np_qfirst; scalar_t__* np_qlast; } ;


 size_t NR_RX ;

__attribute__((used)) static int
nm_priv_rx_enabled(struct netmap_priv_d *priv)
{
 return (priv->np_qfirst[NR_RX] != priv->np_qlast[NR_RX]);
}

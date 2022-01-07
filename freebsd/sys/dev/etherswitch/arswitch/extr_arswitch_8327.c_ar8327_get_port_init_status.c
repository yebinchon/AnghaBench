
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ar8327_port_cfg {int speed; scalar_t__ txpause; scalar_t__ rxpause; scalar_t__ duplex; int force_link; } ;





 int AR8X16_PORT_STS_DUPLEX ;
 int AR8X16_PORT_STS_LINK_AUTO ;
 int AR8X16_PORT_STS_RXFLOW ;
 int AR8X16_PORT_STS_RXMAC ;
 int AR8X16_PORT_STS_SPEED_10 ;
 int AR8X16_PORT_STS_SPEED_100 ;
 int AR8X16_PORT_STS_SPEED_1000 ;
 int AR8X16_PORT_STS_TXFLOW ;
 int AR8X16_PORT_STS_TXMAC ;

__attribute__((used)) static uint32_t
ar8327_get_port_init_status(struct ar8327_port_cfg *cfg)
{
 uint32_t t;

 if (!cfg->force_link)
  return (AR8X16_PORT_STS_LINK_AUTO);

 t = AR8X16_PORT_STS_TXMAC | AR8X16_PORT_STS_RXMAC;
 t |= cfg->duplex ? AR8X16_PORT_STS_DUPLEX : 0;
 t |= cfg->rxpause ? AR8X16_PORT_STS_RXFLOW : 0;
 t |= cfg->txpause ? AR8X16_PORT_STS_TXFLOW : 0;

 switch (cfg->speed) {
 case 130:
  t |= AR8X16_PORT_STS_SPEED_10;
  break;
 case 129:
  t |= AR8X16_PORT_STS_SPEED_100;
  break;
 case 128:
  t |= AR8X16_PORT_STS_SPEED_1000;
  break;
 }

 return (t);
}

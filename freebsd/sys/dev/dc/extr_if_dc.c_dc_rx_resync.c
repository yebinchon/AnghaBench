
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dc_rx_prod; } ;
struct TYPE_4__ {struct dc_desc* dc_rx_list; } ;
struct dc_softc {TYPE_1__ dc_cdata; TYPE_2__ dc_ldata; } ;
struct dc_desc {int dc_status; } ;


 int DC_INC (int,int) ;
 int DC_RXSTAT_OWN ;
 int DC_RX_LIST_CNT ;
 int EAGAIN ;
 int le32toh (int ) ;

__attribute__((used)) static int
dc_rx_resync(struct dc_softc *sc)
{
 struct dc_desc *cur_rx;
 int i, pos;

 pos = sc->dc_cdata.dc_rx_prod;

 for (i = 0; i < DC_RX_LIST_CNT; i++) {
  cur_rx = &sc->dc_ldata.dc_rx_list[pos];
  if (!(le32toh(cur_rx->dc_status) & DC_RXSTAT_OWN))
   break;
  DC_INC(pos, DC_RX_LIST_CNT);
 }


 if (i == DC_RX_LIST_CNT)
  return (0);


 sc->dc_cdata.dc_rx_prod = pos;

 return (EAGAIN);
}

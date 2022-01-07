
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_pchinfo {int dac_idx; scalar_t__ dac_data; int buffer; struct sc_info* parent; } ;
struct sc_info {int dummy; } ;


 int CALL ;
 scalar_t__ CDATA_HOST_SRC_CURRENTH ;
 scalar_t__ CDATA_HOST_SRC_CURRENTL ;
 int M3_DEBUG (int ,char*) ;
 int m3_rd_assp_data (struct sc_info*,scalar_t__) ;
 int sndbuf_getbufaddr (int ) ;

__attribute__((used)) static u_int32_t
m3_pchan_getptr_internal(struct sc_pchinfo *ch)
{
 struct sc_info *sc = ch->parent;
 u_int32_t hi, lo, bus_base, bus_crnt;

 bus_base = sndbuf_getbufaddr(ch->buffer);
 hi = m3_rd_assp_data(sc, ch->dac_data + CDATA_HOST_SRC_CURRENTH);
        lo = m3_rd_assp_data(sc, ch->dac_data + CDATA_HOST_SRC_CURRENTL);
        bus_crnt = lo | (hi << 16);

 M3_DEBUG(CALL, ("m3_pchan_getptr(dac=%d) result=%d\n",
   ch->dac_idx, bus_crnt - bus_base));

 return (bus_crnt - bus_base);
}

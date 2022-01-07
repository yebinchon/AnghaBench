
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int A_TP_RSS_CONFIG_VRT ;
 int A_TP_RSS_SECRET_KEY0 ;
 scalar_t__ CHELSIO_T5 ;
 int F_KEYEXTEND ;
 int F_KEYWREN ;
 int G_KEYMODE (int) ;
 int V_KEYWRADDR (int) ;
 int V_KEYWRADDRX (int) ;
 int V_T6_VFWRADDR (int) ;
 scalar_t__ chip_id (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_pio_write (struct adapter*,int const*,int,int ,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_write_rss_key(struct adapter *adap, const u32 *key, int idx,
        bool sleep_ok)
{
 u8 rss_key_addr_cnt = 16;
 u32 vrt = t4_read_reg(adap, A_TP_RSS_CONFIG_VRT);






 if ((chip_id(adap) > CHELSIO_T5) &&
     (vrt & F_KEYEXTEND) && (G_KEYMODE(vrt) == 3))
  rss_key_addr_cnt = 32;

 t4_tp_pio_write(adap, key, 10, A_TP_RSS_SECRET_KEY0, sleep_ok);

 if (idx >= 0 && idx < rss_key_addr_cnt) {
  if (rss_key_addr_cnt > 16)
   t4_write_reg(adap, A_TP_RSS_CONFIG_VRT,
         vrt | V_KEYWRADDRX(idx >> 4) |
         V_T6_VFWRADDR(idx) | F_KEYWREN);
  else
   t4_write_reg(adap, A_TP_RSS_CONFIG_VRT,
         vrt| V_KEYWRADDR(idx) | F_KEYWREN);
 }
}

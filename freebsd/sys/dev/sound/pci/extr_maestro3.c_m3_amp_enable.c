
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct sc_info {int which; } ;




 int GPIO_DATA ;
 int GPIO_DIRECTION ;
 int GPIO_MASK ;
 int GPO_PRIMARY_AC97 ;
 int GPO_SECONDARY_AC97 ;
 int M3_LOCK_ASSERT (struct sc_info*) ;
 int m3_rd_2 (struct sc_info*,int ) ;
 int m3_wr_2 (struct sc_info*,int ,int) ;
 int panic (char*) ;

__attribute__((used)) static void
m3_amp_enable(struct sc_info *sc)
{
 u_int32_t gpo, polarity_port, polarity;
 u_int16_t data;

 M3_LOCK_ASSERT(sc);

 switch (sc->which) {
        case 129:
                polarity_port = 0x1800;
                break;
 case 128:
                polarity_port = 0x1100;
                break;
        default:
  panic("bad sc->which");
 }
 gpo = (polarity_port >> 8) & 0x0f;
 polarity = polarity_port >> 12;
 polarity = !polarity;
 polarity = polarity << gpo;
 gpo = 1 << gpo;
 m3_wr_2(sc, GPIO_MASK, ~gpo);
 data = m3_rd_2(sc, GPIO_DIRECTION);
 m3_wr_2(sc, GPIO_DIRECTION, data | gpo);
 data = GPO_SECONDARY_AC97 | GPO_PRIMARY_AC97 | polarity;
 m3_wr_2(sc, GPIO_DATA, data);
 m3_wr_2(sc, GPIO_MASK, ~0);
}

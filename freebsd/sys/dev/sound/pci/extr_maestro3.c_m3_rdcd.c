
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;
typedef int kobj_t ;


 int CODEC_COMMAND ;
 int CODEC_DATA ;
 int DELAY (int) ;
 int device_printf (int ,char*) ;
 int m3_rd_2 (struct sc_info*,int ) ;
 scalar_t__ m3_wait (struct sc_info*) ;
 int m3_wr_1 (struct sc_info*,int ,int) ;

__attribute__((used)) static int
m3_rdcd(kobj_t kobj, void *devinfo, int regno)
{
 struct sc_info *sc = (struct sc_info *)devinfo;
 u_int32_t data;

 if (m3_wait(sc)) {
  device_printf(sc->dev, "m3_rdcd timed out.\n");
  return -1;
 }
 m3_wr_1(sc, CODEC_COMMAND, (regno & 0x7f) | 0x80);
 DELAY(50);
 if (m3_wait(sc)) {
  device_printf(sc->dev, "m3_rdcd timed out.\n");
  return -1;
 }
 data = m3_rd_2(sc, CODEC_DATA);
 return data;
}

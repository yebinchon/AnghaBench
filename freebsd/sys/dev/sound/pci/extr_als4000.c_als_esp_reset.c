
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; int sh; int st; } ;


 int ALS_ESP_RD_DATA ;
 int ALS_ESP_RD_STATUS8 ;
 int ALS_ESP_RST ;
 int DELAY (int) ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
als_esp_reset(struct sc_info *sc)
{
 u_int32_t tries, u, v;

 bus_space_write_1(sc->st, sc->sh, ALS_ESP_RST, 1);
 DELAY(10);
 bus_space_write_1(sc->st, sc->sh, ALS_ESP_RST, 0);
 DELAY(30);

 tries = 1000;
 do {
  u = bus_space_read_1(sc->st, sc->sh, ALS_ESP_RD_STATUS8);
  if (u & 0x80) {
   v = bus_space_read_1(sc->st, sc->sh, ALS_ESP_RD_DATA);
   if (v == 0xaa)
    return 0;
   else
    break;
  }
  DELAY(20);
 } while (--tries != 0);

 if (tries == 0)
  device_printf(sc->dev, "als_esp_reset timeout");
 return 1;
}

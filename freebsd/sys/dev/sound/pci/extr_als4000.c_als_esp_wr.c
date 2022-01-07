
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct sc_info {int sh; int st; int dev; } ;


 int ALS_ESP_WR_DATA ;
 int ALS_ESP_WR_STATUS ;
 int DELAY (int) ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
als_esp_wr(struct sc_info *sc, u_int8_t data)
{
 u_int32_t tries, v;

 tries = 1000;
 do {
  v = bus_space_read_1(sc->st, sc->sh, ALS_ESP_WR_STATUS);
  if (~v & 0x80)
   break;
  DELAY(20);
 } while (--tries != 0);

 if (tries == 0)
  device_printf(sc->dev, "als_esp_wr timeout");

 bus_space_write_1(sc->st, sc->sh, ALS_ESP_WR_DATA, data);
}

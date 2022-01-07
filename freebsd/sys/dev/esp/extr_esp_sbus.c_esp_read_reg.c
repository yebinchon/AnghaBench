
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int sc_res; } ;
struct TYPE_2__ {char* r_name; scalar_t__ r_flag; } ;


 int bus_read_1 (int ,int) ;
 TYPE_1__* esp__read_regnames ;
 scalar_t__ esp_sbus_debug ;
 int printf (char*,int,char*,int) ;

__attribute__((used)) static uint8_t
esp_read_reg(struct ncr53c9x_softc *sc, int reg)
{
 struct esp_softc *esc = (struct esp_softc *)sc;
 uint8_t v;

 v = bus_read_1(esc->sc_res, reg * 4);







 return (v);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sfxge_softc {int dev; } ;


 int UINT16_MAX ;
 int device_printf (int ,char*,int,...) ;
 int sfxge_stats_update_period_ms ;

__attribute__((used)) static uint16_t
sfxge_port_stats_update_period_ms(struct sfxge_softc *sc)
{
 int period_ms = sfxge_stats_update_period_ms;

 if (period_ms < 0) {
  device_printf(sc->dev,
   "treat negative stats update period %d as 0 (disable)\n",
    period_ms);
  period_ms = 0;
 } else if (period_ms > UINT16_MAX) {
  device_printf(sc->dev,
   "treat too big stats update period %d as %u\n",
   period_ms, UINT16_MAX);
  period_ms = UINT16_MAX;
 }

 return period_ms;
}

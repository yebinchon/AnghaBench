
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct wpi_softc {int temp; int * maxpwr; } ;
struct wpi_power_sample {int power; int index; } ;
struct wpi_power_group {int maxpwr; int temp; struct wpi_power_sample* samples; } ;


 int WPI_MAX_PWR_INDEX ;
 int WPI_RIDX_CCK1 ;



 int interpolate (int,int,int ,int,int ,int) ;
 int min (int,int ) ;

__attribute__((used)) static int
wpi_get_power_index(struct wpi_softc *sc, struct wpi_power_group *group,
    uint8_t chan, int is_chan_5ghz, int ridx)
{
 struct wpi_power_sample *sample;
 int pwr, idx;


 pwr = group->maxpwr / 2;


 switch (ridx) {
 case 130:
  pwr -= is_chan_5ghz ? 5 : 0;
  break;
 case 129:
  pwr -= is_chan_5ghz ? 10 : 7;
  break;
 case 128:
  pwr -= is_chan_5ghz ? 12 : 9;
  break;
 }


 pwr = min(pwr, sc->maxpwr[chan]);


 for (sample = group->samples; sample < &group->samples[3]; sample++)
  if (pwr > sample[1].power)
   break;

 idx = ((sample[0].index) + ((((1 << 19) * (((pwr) - (sample[0].power)) * ((sample[1].index) - (sample[0].index)))) / ((sample[1].power) - (sample[0].power)) + (1 << 19) / 2) / (1 << 19)));







 idx -= (sc->temp - group->temp) * 11 / 100;


 if (ridx >= WPI_RIDX_CCK1)
  idx += 10;


 if (idx < 0)
  return 0;
 if (idx > WPI_MAX_PWR_INDEX)
  return WPI_MAX_PWR_INDEX;
 return idx;



}

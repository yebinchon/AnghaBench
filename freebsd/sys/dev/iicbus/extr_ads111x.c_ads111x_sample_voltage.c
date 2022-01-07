
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads111x_softc {int cfgword; TYPE_1__* chipinfo; struct ads111x_channel* channels; } ;
struct ads111x_channel {int gainidx; int rateidx; } ;
typedef int int64_t ;
struct TYPE_2__ {int* ratetab; int* rangetab; int rangediv; } ;


 int ADS111x_CONF ;
 int ADS111x_CONF_GAIN_SHIFT ;
 int ADS111x_CONF_IDLE ;
 int ADS111x_CONF_MUX_SHIFT ;
 int ADS111x_CONF_OS_SHIFT ;
 int ADS111x_CONF_RATE_SHIFT ;
 int ADS111x_CONV ;
 int C_PREL (int) ;
 int EWOULDBLOCK ;
 int ads111x_read_2 (struct ads111x_softc*,int ,int*) ;
 int ads111x_write_2 (struct ads111x_softc*,int ,int) ;
 int nstosbt (int) ;
 int pause_sbt (char*,int ,int ,int ) ;

__attribute__((used)) static int
ads111x_sample_voltage(struct ads111x_softc *sc, int channum, int *voltage)
{
 struct ads111x_channel *chan;
 int err, cfgword, convword, rate, retries, waitns;
 int64_t fsrange;

 chan = &sc->channels[channum];


 cfgword = sc->cfgword |
     (1 << ADS111x_CONF_OS_SHIFT) |
     (channum << ADS111x_CONF_MUX_SHIFT) |
     (chan->gainidx << ADS111x_CONF_GAIN_SHIFT) |
     (chan->rateidx << ADS111x_CONF_RATE_SHIFT);
 if ((err = ads111x_write_2(sc, ADS111x_CONF, cfgword)) != 0)
  return (err);






 rate = sc->chipinfo->ratetab[chan->rateidx];
 waitns = (1000000000 + rate - 1) / rate;
 err = pause_sbt("ads111x", nstosbt(waitns), 0, C_PREL(2));
 if (err != 0 && err != EWOULDBLOCK)
  return (err);
 for (retries = 5; ; --retries) {
  if (retries == 0)
   return (EWOULDBLOCK);
  if ((err = ads111x_read_2(sc, ADS111x_CONF, &cfgword)) != 0)
   return (err);
  if (cfgword & ADS111x_CONF_IDLE)
   break;
  pause_sbt("ads111x", nstosbt(waitns / 20), 0, C_PREL(2));
 }


 if ((err = ads111x_read_2(sc, ADS111x_CONV, &convword)) != 0)
  return (err);
 fsrange = sc->chipinfo->rangetab[chan->gainidx];
 *voltage = (int)((convword * fsrange ) / sc->chipinfo->rangediv);

 return (err);
}

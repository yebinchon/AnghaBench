
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cpufreq_dt_softc {int nopp; TYPE_1__* opp; int dev; } ;
typedef size_t ssize_t ;
typedef int phandle_t ;
typedef int lat ;
struct TYPE_2__ {int freq; int uvolt_min; int uvolt_max; int uvolt_target; int clk_latency; } ;


 int CPUFREQ_VAL_UNKNOWN ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_OFWPROP ;
 int M_WAITOK ;
 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int,int) ;
 int free (int*,int ) ;
 TYPE_1__* malloc (int,int ,int ) ;

__attribute__((used)) static int
cpufreq_dt_oppv1_parse(struct cpufreq_dt_softc *sc, phandle_t node)
{
 uint32_t *opp, lat;
 ssize_t n;

 sc->nopp = OF_getencprop_alloc_multi(node, "operating-points",
     sizeof(uint32_t) * 2, (void **)&opp);
 if (sc->nopp == -1)
  return (ENXIO);

 if (OF_getencprop(node, "clock-latency", &lat, sizeof(lat)) == -1)
  lat = CPUFREQ_VAL_UNKNOWN;

 sc->opp = malloc(sizeof(*sc->opp) * sc->nopp, M_DEVBUF, M_WAITOK);

 for (n = 0; n < sc->nopp; n++) {
  sc->opp[n].freq = opp[n * 2 + 0] * 1000;
  sc->opp[n].uvolt_min = opp[n * 2 + 1];
  sc->opp[n].uvolt_max = sc->opp[n].uvolt_min;
  sc->opp[n].uvolt_target = sc->opp[n].uvolt_min;
  sc->opp[n].clk_latency = lat;

  if (bootverbose)
   device_printf(sc->dev, "%ju.%03ju MHz, %u uV\n",
       sc->opp[n].freq / 1000000,
       sc->opp[n].freq % 1000000,
       sc->opp[n].uvolt_target);
 }
 free(opp, M_OFWPROP);

 return (0);
}

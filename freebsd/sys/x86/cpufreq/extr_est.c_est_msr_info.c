
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct est_softc {int msr_settings; } ;
struct TYPE_4__ {int freq; int volts; int id16; void* power; } ;
typedef TYPE_1__ freq_info ;
typedef int device_t ;


 void* CPUFREQ_VAL_UNKNOWN ;
 int EOPNOTSUPP ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TRUE ;
 int atomic_load_acq_64 (int *) ;
 int bus_speed_ok (int) ;
 struct est_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,...) ;
 TYPE_1__* malloc (int,int ,int) ;
 int msr_info_enabled ;
 int tsc_freq ;

__attribute__((used)) static int
est_msr_info(device_t dev, uint64_t msr, freq_info **freqs, size_t *freqslen)
{
 struct est_softc *sc;
 freq_info *fp;
 int bus, freq, volts;
 uint16_t id;

 if (!msr_info_enabled)
  return (EOPNOTSUPP);


 freq = atomic_load_acq_64(&tsc_freq) / 1000000;
 id = msr >> 32;
 bus = freq / (id >> 8);
 device_printf(dev, "Guessed bus clock (high) of %d MHz\n", bus);
 if (!bus_speed_ok(bus)) {

  id = msr >> 48;
  bus = freq / (id >> 8);
  device_printf(dev, "Guessed bus clock (low) of %d MHz\n", bus);
  if (!bus_speed_ok(bus))
   return (EOPNOTSUPP);


  id = msr >> 32;
  freq = ((id >> 8) & 0xff) * bus;
 }


 sc = device_get_softc(dev);
 fp = malloc(sizeof(freq_info) * 2, M_DEVBUF, M_WAITOK | M_ZERO);


 volts = id & 0xff;
 if (volts != 0) {
  volts <<= 4;
  volts += 700;
 }
 fp[0].freq = freq;
 fp[0].volts = volts;
 fp[0].id16 = id;
 fp[0].power = CPUFREQ_VAL_UNKNOWN;
 device_printf(dev, "Guessed high setting of %d MHz @ %d Mv\n", freq,
     volts);


 id = msr >> 48;
 freq = ((id >> 8) & 0xff) * bus;
 volts = id & 0xff;
 if (volts != 0) {
  volts <<= 4;
  volts += 700;
 }
 fp[1].freq = freq;
 fp[1].volts = volts;
 fp[1].id16 = id;
 fp[1].power = CPUFREQ_VAL_UNKNOWN;
 device_printf(dev, "Guessed low setting of %d MHz @ %d Mv\n", freq,
     volts);


 sc->msr_settings = TRUE;
 *freqs = fp;
 *freqslen = 2;
 return (0);
}

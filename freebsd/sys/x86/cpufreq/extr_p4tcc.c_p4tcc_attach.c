
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p4tcc_softc {void* set_count; void* lowest_val; int auto_mode; int dev; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;


 void* TCC_NUM_SETTINGS ;
 int TRUE ;
 int cpu_id ;
 int cpufreq_register (int ) ;
 struct p4tcc_softc* device_get_softc (int ) ;
 int p4tcc_set (int ,struct cf_setting*) ;

__attribute__((used)) static int
p4tcc_attach(device_t dev)
{
 struct p4tcc_softc *sc;
 struct cf_setting set;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->set_count = TCC_NUM_SETTINGS;







 sc->auto_mode = TRUE;
 switch (cpu_id & 0xff) {
 case 0x22:
 case 0x24:
 case 0x25:
 case 0x27:
 case 0x29:




  sc->set_count -= 1;
  break;
 case 0x07:
 case 0x0a:
 case 0x12:
 case 0x13:
 case 0x62:
 case 0x64:
 case 0x65:




  sc->set_count -= 2;
  break;
 }
 sc->lowest_val = TCC_NUM_SETTINGS - sc->set_count + 1;





 set.freq = 10000;
 p4tcc_set(dev, &set);

 cpufreq_register(dev);
 return (0);
}

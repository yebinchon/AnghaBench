
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smist_softc {int smi_cmd; int smi_data; int command; int flags; } ;
typedef scalar_t__ device_t ;


 int CPUFREQ_DRV_TYPE (scalar_t__,int*) ;
 int CPUFREQ_FLAG_INFO_ONLY ;
 int ENXIO ;
 scalar_t__ bootverbose ;
 scalar_t__ device_find_child (int ,char*,int) ;
 int device_get_parent (scalar_t__) ;
 struct smist_softc* device_get_softc (scalar_t__) ;
 scalar_t__ device_is_attached (scalar_t__) ;
 int device_printf (scalar_t__,char*,...) ;
 int device_set_desc (scalar_t__,char*) ;
 int int15_gsic_call (int*,int*,int*,int*,int*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
smist_probe(device_t dev)
{
 struct smist_softc *sc;
 device_t ichss_dev, perf_dev;
 int sig, smi_cmd, command, smi_data, flags;
 int type;
 int rv;

 if (resource_disabled("smist", 0))
  return (ENXIO);

 sc = device_get_softc(dev);





 perf_dev = device_find_child(device_get_parent(dev), "acpi_perf", -1);
 if (perf_dev && device_is_attached(perf_dev)) {
  rv = CPUFREQ_DRV_TYPE(perf_dev, &type);
  if (rv == 0 && (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
   return (ENXIO);
 }
 ichss_dev = device_find_child(device_get_parent(dev), "ichss", -1);
 if (ichss_dev && device_is_attached(ichss_dev))
  return (ENXIO);

 int15_gsic_call(&sig, &smi_cmd, &command, &smi_data, &flags);
 if (bootverbose)
  device_printf(dev, "sig %.8x smi_cmd %.4x command %.2x "
      "smi_data %.4x flags %.8x\n",
      sig, smi_cmd, command, smi_data, flags);

 if (sig != -1) {
  sc->smi_cmd = smi_cmd;
  sc->smi_data = smi_data;






  if (command == 0x80) {
   device_printf(dev,
       "GSIC returned cmd 0x80, should be 0x82\n");
   command = 0x82;
  }
  sc->command = (sig & 0xffffff00) | (command & 0xff);
  sc->flags = flags;
 } else {

  sc->smi_cmd = 0xb2;
  sc->smi_data = 0xb3;
  sc->command = 0x47534982;
  sc->flags = 0;
 }

 device_set_desc(dev, "SpeedStep SMI");

 return (-1500);
}

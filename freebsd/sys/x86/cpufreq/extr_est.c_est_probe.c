
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ device_t ;


 int CPUFREQ_DRV_TYPE (scalar_t__,int*) ;
 int CPUFREQ_FLAG_INFO_ONLY ;
 int ENXIO ;
 int MSR_MISC_ENABLE ;
 int MSR_SS_ENABLE ;
 scalar_t__ bootverbose ;
 scalar_t__ device_find_child (int ,char*,int) ;
 int device_get_parent (scalar_t__) ;
 scalar_t__ device_is_attached (scalar_t__) ;
 int device_printf (scalar_t__,char*) ;
 int device_set_desc (scalar_t__,char*) ;
 int rdmsr (int ) ;
 scalar_t__ resource_disabled (char*,int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static int
est_probe(device_t dev)
{
 device_t perf_dev;
 uint64_t msr;
 int error, type;

 if (resource_disabled("est", 0))
  return (ENXIO);





 perf_dev = device_find_child(device_get_parent(dev), "acpi_perf", -1);
 if (perf_dev && device_is_attached(perf_dev)) {
  error = CPUFREQ_DRV_TYPE(perf_dev, &type);
  if (error == 0 && (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
   return (ENXIO);
 }


 msr = rdmsr(MSR_MISC_ENABLE);
 if ((msr & MSR_SS_ENABLE) == 0) {
  wrmsr(MSR_MISC_ENABLE, msr | MSR_SS_ENABLE);
  if (bootverbose)
   device_printf(dev, "enabling SpeedStep\n");


  msr = rdmsr(MSR_MISC_ENABLE);
  if ((msr & MSR_SS_ENABLE) == 0) {
   device_printf(dev, "failed to enable SpeedStep\n");
   return (ENXIO);
  }
 }

 device_set_desc(dev, "Enhanced SpeedStep Frequency Control");
 return (0);
}

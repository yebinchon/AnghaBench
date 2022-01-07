
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 int CPUFREQ_DRV_TYPE (scalar_t__,int*) ;
 int CPUFREQ_FLAG_INFO_ONLY ;
 int ENXIO ;
 scalar_t__ device_find_child (int ,char*,int) ;
 int device_get_parent (scalar_t__) ;
 scalar_t__ device_is_attached (scalar_t__) ;
 int device_set_desc (scalar_t__,char*) ;

__attribute__((used)) static int
ichss_probe(device_t dev)
{
 device_t est_dev, perf_dev;
 int error, type;






 perf_dev = device_find_child(device_get_parent(dev), "acpi_perf", -1);
 if (perf_dev && device_is_attached(perf_dev)) {
  error = CPUFREQ_DRV_TYPE(perf_dev, &type);
  if (error == 0 && (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
   return (ENXIO);
 }
 est_dev = device_find_child(device_get_parent(dev), "est", -1);
 if (est_dev && device_is_attached(est_dev))
  return (ENXIO);

 device_set_desc(dev, "SpeedStep ICH");
 return (-1000);
}

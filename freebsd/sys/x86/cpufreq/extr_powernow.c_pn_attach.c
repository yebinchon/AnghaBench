
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 int ENXIO ;
 int cpufreq_register (scalar_t__) ;
 scalar_t__ device_find_child (int ,char*,int) ;
 int device_get_parent (scalar_t__) ;
 int pn_decode_acpi (scalar_t__,scalar_t__) ;
 int pn_decode_pst (scalar_t__) ;

__attribute__((used)) static int
pn_attach(device_t dev)
{
 int rv;
 device_t child;

 child = device_find_child(device_get_parent(dev), "acpi_perf", -1);
 if (child) {
  rv = pn_decode_acpi(dev, child);
  if (rv)
   rv = pn_decode_pst(dev);
 } else
  rv = pn_decode_pst(dev);

 if (rv != 0)
  return (ENXIO);
 cpufreq_register(dev);
 return (0);
}

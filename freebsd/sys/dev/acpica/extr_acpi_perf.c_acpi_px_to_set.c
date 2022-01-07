
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int * spec; int dev; int volts; int lat; int power; int freq; } ;
struct acpi_px {int sts_val; int ctrl_val; int trans_lat; int power; int core_freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 size_t PX_SPEC_CONTROL ;
 size_t PX_SPEC_STATUS ;

__attribute__((used)) static int
acpi_px_to_set(device_t dev, struct acpi_px *px, struct cf_setting *set)
{

 if (px == ((void*)0) || set == ((void*)0))
  return (EINVAL);

 set->freq = px->core_freq;
 set->power = px->power;

 set->lat = px->trans_lat;
 set->volts = CPUFREQ_VAL_UNKNOWN;
 set->dev = dev;
 set->spec[PX_SPEC_CONTROL] = px->ctrl_val;
 set->spec[PX_SPEC_STATUS] = px->sts_val;

 return (0);
}

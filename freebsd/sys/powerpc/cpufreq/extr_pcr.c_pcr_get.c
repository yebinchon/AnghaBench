
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cf_setting {int freq; int dev; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int PCR_HALF ;
 int PCR_QUARTER ;
 int SCOM_PSR ;
 int memset (struct cf_setting*,int ,int) ;
 int read_scom (int ) ;

__attribute__((used)) static int
pcr_get(device_t dev, struct cf_setting *set)
{
 uint64_t psr;

 if (set == ((void*)0))
  return (EINVAL);

 memset(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));

 psr = read_scom(SCOM_PSR);


 psr = (psr >> 56) & 3;

 set->freq = 10000;
 if (psr == PCR_HALF)
  set->freq = 5000;
 else if (psr == PCR_QUARTER)
  set->freq = 2500;

 set->dev = dev;

 return (0);
}

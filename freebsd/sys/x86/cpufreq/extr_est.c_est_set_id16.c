
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int device_t ;


 int DELAY (int ) ;
 int ENXIO ;
 int EST_TRANS_LAT ;
 int MSR_PERF_CTL ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int) ;
 int est_get_id16 (int*) ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static int
est_set_id16(device_t dev, uint16_t id16, int need_check)
{
 uint64_t msr;
 uint16_t new_id16;
 int ret = 0;


 msr = rdmsr(MSR_PERF_CTL);
 msr = (msr & ~0xffff) | id16;
 wrmsr(MSR_PERF_CTL, msr);

 if (need_check) {

  DELAY(EST_TRANS_LAT);
  est_get_id16(&new_id16);
  if (new_id16 != id16) {
   if (bootverbose)
    device_printf(dev, "Invalid id16 (set, cur) "
        "= (%u, %u)\n", id16, new_id16);
   ret = ENXIO;
  }
 }
 return (ret);
}

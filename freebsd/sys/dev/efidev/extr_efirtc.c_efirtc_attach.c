
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmcap ;
struct efi_tmcap {long tc_res; scalar_t__ tc_stz; } ;
typedef int device_t ;
struct TYPE_2__ {long tv_nsec; } ;


 int CLOCKF_SETTIME_NO_ADJ ;
 int bzero (struct efi_tmcap*,int) ;
 int clock_register_flags (int ,long,int ) ;
 int clock_schedule (int ,scalar_t__) ;
 int device_printf (int ,char*) ;
 int efi_get_time_capabilities (struct efi_tmcap*) ;
 TYPE_1__ efirtc_resadj ;
 scalar_t__ efirtc_zeroes_subseconds ;
 scalar_t__ ns_per_s ;
 long ns_per_us ;
 long us_per_s ;

__attribute__((used)) static int
efirtc_attach(device_t dev)
{
 struct efi_tmcap tmcap;
 long res;
 int error;

 bzero(&tmcap, sizeof(tmcap));
 if ((error = efi_get_time_capabilities(&tmcap)) != 0) {
  device_printf(dev, "cannot get EFI time capabilities");
  return (error);
 }


 if (tmcap.tc_res == 0)
  res = us_per_s;
 else if (tmcap.tc_res > us_per_s)
  res = 1;
 else
  res = us_per_s / tmcap.tc_res;


 efirtc_resadj.tv_nsec = (res * ns_per_us) / 2;


 efirtc_zeroes_subseconds = tmcap.tc_stz;





 clock_register_flags(dev, res, CLOCKF_SETTIME_NO_ADJ);
 if (efirtc_zeroes_subseconds)
  clock_schedule(dev, ns_per_s - ns_per_us);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int CVMX_CIU_PP_RST ;
 int DELAY (int) ;
 scalar_t__ atomic_cmpset_32 (int *,int ,int) ;
 scalar_t__ bootverbose ;
 unsigned long long cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int octeon_ap_boot ;
 int printf (char*,int) ;

int
platform_start_ap(int cpuid)
{
 uint64_t cores_in_reset;





 cores_in_reset = cvmx_read_csr(CVMX_CIU_PP_RST);
 if (cores_in_reset & (1ULL << cpuid)) {
     if (bootverbose)
  printf ("AP #%d still in reset\n", cpuid);
     cores_in_reset &= ~(1ULL << cpuid);
     cvmx_write_csr(CVMX_CIU_PP_RST, (uint64_t)(cores_in_reset));
     DELAY(2000);
 }

 if (atomic_cmpset_32(&octeon_ap_boot, ~0, cpuid) == 0)
  return (-1);
 for (;;) {
  DELAY(1000);
  if (atomic_cmpset_32(&octeon_ap_boot, 0, ~0) != 0)
   return (0);
  printf("Waiting for cpu%d to start\n", cpuid);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DELAY (int) ;
 int MVPCONTROL_VPC ;
 int TCSTATUS_A ;
 int VPECONF0_VPA ;
 scalar_t__ atomic_cmpset_32 (int *,int ,int) ;
 int evpe () ;
 int malta_ap_boot ;
 int mftc0 (int,int) ;
 int mttc0 (int,int,int ) ;
 int printf (char*,int) ;
 int read_c0_register32 (int ,int) ;
 int set_thread_context (int) ;
 int write_c0_register32 (int ,int,int ) ;

int
platform_start_ap(int cpuid)
{
 uint32_t reg;
 int timeout;


 reg = read_c0_register32(0, 1);
 reg |= (MVPCONTROL_VPC);
 write_c0_register32(0, 1, reg);

 set_thread_context(cpuid);
 reg = mftc0(2, 1);
 reg |= (TCSTATUS_A);
 mttc0(2, 1, reg);


 mttc0(2, 4, 0);


 reg = mftc0(1, 2);
 reg |= (VPECONF0_VPA);
 mttc0(1, 2, reg);


 reg = read_c0_register32(0, 1);
 reg &= ~(MVPCONTROL_VPC);
 write_c0_register32(0, 1, reg);

 evpe();

 if (atomic_cmpset_32(&malta_ap_boot, ~0, cpuid) == 0)
  return (-1);

 printf("Waiting for cpu%d to start\n", cpuid);

 timeout = 100;
 do {
  DELAY(1000);
  if (atomic_cmpset_32(&malta_ap_boot, 0, ~0) != 0) {
   printf("CPU %d started\n", cpuid);
   return (0);
  }
 } while (timeout--);

 printf("CPU %d failed to start\n", cpuid);

 return (0);
}

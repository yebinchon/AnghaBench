
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int DEB (int ) ;
 int NUM_CMI_RATES ;
 int* cmi_rates ;
 int printf (char*,int,int) ;

__attribute__((used)) static u_int32_t
cmpci_rate_to_regvalue(int rate)
{
 int i, r;

 for(i = 0; i < NUM_CMI_RATES - 1; i++) {
  if (rate < ((cmi_rates[i] + cmi_rates[i + 1]) / 2)) {
   break;
  }
 }

 DEB(printf("cmpci_rate_to_regvalue: %d -> %d\n", rate, cmi_rates[i]));

 r = ((i >> 1) | (i << 2)) & 0x07;
 return r;
}

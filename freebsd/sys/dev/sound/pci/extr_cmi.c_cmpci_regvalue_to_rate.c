
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int DEB (int ) ;
 int* cmi_rates ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
cmpci_regvalue_to_rate(u_int32_t r)
{
 int i;

 i = ((r << 1) | (r >> 2)) & 0x07;
 DEB(printf("cmpci_regvalue_to_rate: %d -> %d\n", r, i));
 return cmi_rates[i];
}

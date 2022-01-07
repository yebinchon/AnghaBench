
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_UPLCOM_RATES ;
 unsigned int* uplcom_rates ;

__attribute__((used)) static int
uplcom_baud_supported(unsigned int speed)
{
 int i;
 for (i = 0; i < N_UPLCOM_RATES; i++) {
  if (uplcom_rates[i] == speed)
   return 1;
 }
 return 0;
}

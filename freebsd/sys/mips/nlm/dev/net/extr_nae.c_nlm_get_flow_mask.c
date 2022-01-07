
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
nlm_get_flow_mask(int num_ports)
{
 const int max_bits = 5;
 int i;



 for (i = 0; i < max_bits; i++) {
  if (num_ports <= (2 << i))
   return (i + 1);
 }
 return (max_bits);
}

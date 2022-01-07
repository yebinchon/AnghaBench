
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_counter_zone ;
 int atomic_subtract_int (unsigned int*,int) ;
 int uma_zfree (int ,unsigned int*) ;

void
tcp_fastopen_decrement_counter(unsigned int *counter)
{
 if (*counter == 1)
  uma_zfree(V_counter_zone, counter);
 else
  atomic_subtract_int(counter, 1);
}

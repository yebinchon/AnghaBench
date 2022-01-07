
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_NOWAIT ;
 int V_counter_zone ;
 unsigned int* uma_zalloc (int ,int ) ;

unsigned int *
tcp_fastopen_alloc_counter(void)
{
 unsigned int *counter;
 counter = uma_zalloc(V_counter_zone, M_NOWAIT);
 if (counter)
  *counter = 1;
 return (counter);
}

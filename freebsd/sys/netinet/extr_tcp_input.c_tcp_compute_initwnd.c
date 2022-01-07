
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ V_tcp_do_rfc3390 ;
 int V_tcp_initcwnd_segments ;
 int max (int,int) ;
 int min (int,int ) ;

uint32_t
tcp_compute_initwnd(uint32_t maxseg)
{
 if (V_tcp_initcwnd_segments)
  return min(V_tcp_initcwnd_segments * maxseg,
      max(2 * maxseg, V_tcp_initcwnd_segments * 1460));
 else if (V_tcp_do_rfc3390)
  return min(4 * maxseg, max(2 * maxseg, 4380));
 else {

  if (maxseg > 2190)
   return (2 * maxseg);
  else if (maxseg > 1095)
   return (3 * maxseg);
  else
   return (4 * maxseg);
 }
}

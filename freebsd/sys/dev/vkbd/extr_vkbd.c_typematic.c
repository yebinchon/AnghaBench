
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* delays ;
 int nitems (int*) ;
 int* rates ;

__attribute__((used)) static int
typematic(int delay, int rate)
{
 int value;
 int i;

 for (i = nitems(delays) - 1; i > 0; i --) {
  if (delay >= delays[i])
   break;
 }
 value = i << 5;
 for (i = nitems(rates) - 1; i > 0; i --) {
  if (rate >= rates[i])
   break;
 }
 value |= i;
 return (value);
}

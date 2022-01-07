
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ FG_SENSOR_NOISE_THRESHOLD ;

__attribute__((used)) static void
fg_get_pressures(int *p, const int *cur, const int *base, int n)
{
 int i;

 for (i = 0; i < n; i++) {
  p[i] = cur[i] - base[i];
  if (p[i] > 127)
   p[i] -= 256;
  if (p[i] < -127)
   p[i] += 256;
  if (p[i] < 0)
   p[i] = 0;






  if ((u_int)p[i] <= FG_SENSOR_NOISE_THRESHOLD)
   p[i] = 0;
  else
   p[i] -= FG_SENSOR_NOISE_THRESHOLD;
 }
}

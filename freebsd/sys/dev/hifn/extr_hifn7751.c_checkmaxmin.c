
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int device_t ;


 int device_printf (int ,char*,char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u_int
checkmaxmin(device_t dev, const char *what, u_int v, u_int min, u_int max)
{
 if (v > max) {
  device_printf(dev, "Warning, %s %u out of range, "
   "using max %u\n", what, v, max);
  v = max;
 } else if (v < min) {
  device_printf(dev, "Warning, %s %u out of range, "
   "using min %u\n", what, v, min);
  v = min;
 }
 return v;
}

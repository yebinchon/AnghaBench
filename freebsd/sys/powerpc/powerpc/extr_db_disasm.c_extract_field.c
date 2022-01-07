
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



u_int32_t
extract_field(u_int32_t value, u_int32_t base, u_int32_t width)
{
 u_int32_t mask = (1 << width) - 1;
 return ((value >> base) & mask);
}

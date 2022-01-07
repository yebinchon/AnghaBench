
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;


 scalar_t__ tws_swap32 (int) ;

u_int64_t
tws_swap64(u_int64_t val)
{
    return((((u_int64_t)(tws_swap32(((u_int32_t *)(&(val)))[1]))) << 32) |
           ((u_int32_t)(tws_swap32(((u_int32_t *)(&(val)))[0]))));
}

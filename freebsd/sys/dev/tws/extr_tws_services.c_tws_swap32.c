
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



u_int32_t
tws_swap32(u_int32_t val)
{
    return(((val << 24) | ((val << 8) & (0xFF0000)) |
           ((val >> 8) & (0xFF00)) | (val >> 24)));
}

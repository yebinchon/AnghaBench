
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 scalar_t__ REDZONE_FSIZE ;
 scalar_t__ redzone_roundup (scalar_t__) ;

u_long
redzone_size_ntor(u_long nsize)
{

 return (nsize + redzone_roundup(nsize) + REDZONE_FSIZE);
}

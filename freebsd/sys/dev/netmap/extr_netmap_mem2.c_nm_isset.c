
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int u_int ;



__attribute__((used)) static int
nm_isset(uint32_t *bitmap, u_int i)
{
 return bitmap[ (i>>5) ] & ( 1U << (i & 31U) );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static u_int
lock_roundup_2(u_int val)
{
 u_int res;

 for (res = 1; res <= val; res <<= 1)
  continue;

 return (res);
}

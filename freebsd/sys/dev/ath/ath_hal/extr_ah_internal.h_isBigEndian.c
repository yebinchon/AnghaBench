
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static __inline__ int
isBigEndian(void)
{
 union {
  int32_t i;
  char c[4];
 } u;
 u.i = 1;
 return (u.c[0] == 0);
}

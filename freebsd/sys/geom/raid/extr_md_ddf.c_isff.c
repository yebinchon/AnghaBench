
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int
isff(uint8_t *buf, int size)
{
 int i;

 for (i = 0; i < size; i++)
  if (buf[i] != 0xff)
   return (0);
 return (1);
}

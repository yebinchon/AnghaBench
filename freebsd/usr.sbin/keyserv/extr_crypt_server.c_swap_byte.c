
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void swap_byte(unsigned char *a, unsigned char *b)
{
   unsigned char swapByte;

   swapByte = *a;
   *a = *b;
   *b = swapByte;
}

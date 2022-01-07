
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int
acpi_checksum(void *p, size_t length)
{
 uint8_t *bp;
 uint8_t sum;

 bp = p;
 sum = 0;
 while (length--)
  sum += *bp++;

 return (sum);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;



__attribute__((used)) static int
acpi_checksum(void *p, size_t length)
{
 u_int8_t *bp;
 u_int8_t sum;

 bp = p;
 sum = 0;
 while (length--)
  sum += *bp++;

 return (sum);
}

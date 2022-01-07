
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static void
ahci_checksum(uint8_t *buf, int size)
{
 int i;
 uint8_t sum = 0;

 for (i = 0; i < size - 1; i++)
  sum += buf[i];
 buf[size - 1] = 0x100 - sum;
}

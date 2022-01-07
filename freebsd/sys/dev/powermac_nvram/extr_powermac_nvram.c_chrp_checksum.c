
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static int
chrp_checksum(int sum, uint8_t *data, uint8_t *end)
{

 for (; data < end; data++)
  sum += data[0];
 while (sum > 0xff)
  sum = (sum & 0xff) + (sum >> 8);
 return sum;
}

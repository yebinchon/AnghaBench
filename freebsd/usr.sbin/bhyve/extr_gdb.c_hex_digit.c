
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t
hex_digit(uint8_t nibble)
{

 if (nibble <= 9)
  return (nibble + '0');
 else
  return (nibble + 'a' - 10);
}

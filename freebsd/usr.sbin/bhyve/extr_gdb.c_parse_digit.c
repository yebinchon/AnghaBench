
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static uint8_t
parse_digit(uint8_t v)
{

 if (v >= '0' && v <= '9')
  return (v - '0');
 if (v >= 'a' && v <= 'f')
  return (v - 'a' + 10);
 if (v >= 'A' && v <= 'F')
  return (v - 'A' + 10);
 return (0xF);
}

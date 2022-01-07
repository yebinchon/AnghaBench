
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int hex_digit (int) ;

__attribute__((used)) static void
format_byte(uint8_t v, uint8_t *buf)
{

 buf[0] = hex_digit(v >> 4);
 buf[1] = hex_digit(v & 0xf);
}

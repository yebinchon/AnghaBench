
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int parse_digit (int const) ;

__attribute__((used)) static uint8_t
parse_byte(const uint8_t *p)
{

 return (parse_digit(p[0]) << 4 | parse_digit(p[1]));
}

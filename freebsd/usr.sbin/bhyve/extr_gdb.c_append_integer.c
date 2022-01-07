
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append_char (int ) ;
 int append_unsigned_be (unsigned int,scalar_t__) ;
 scalar_t__ fls (unsigned int) ;

__attribute__((used)) static void
append_integer(unsigned int value)
{

 if (value == 0)
  append_char('0');
 else
  append_unsigned_be(value, fls(value) + 7 / 8);
}

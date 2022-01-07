
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int append_byte (int) ;

__attribute__((used)) static void
append_unsigned_native(uintmax_t value, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++) {
  append_byte(value);
  value >>= 8;
 }
}

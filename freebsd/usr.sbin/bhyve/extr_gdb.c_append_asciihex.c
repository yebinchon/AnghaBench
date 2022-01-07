
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append_byte (char const) ;

__attribute__((used)) static void
append_asciihex(const char *str)
{

 while (*str != '\0') {
  append_byte(*str);
  str++;
 }
}

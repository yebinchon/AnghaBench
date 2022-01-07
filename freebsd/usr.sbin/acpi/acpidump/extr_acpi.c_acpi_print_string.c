
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (int) ;

__attribute__((used)) static void
acpi_print_string(char *s, size_t length)
{
 int c;


 while (length > 0 && (s[length - 1] == ' ' || s[length - 1] == '\0'))
  length--;

 while (length--) {
  c = *s++;
  putchar(c);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int printf (char*,char const*,char const*,char*) ;
 unsigned long strtoul (char const*,char**,int ) ;

__attribute__((used)) static uint16_t
usb_quirk_strtou16(const char **pptr, const char *name, const char *what)
{
 unsigned long value;
 char *end;

 value = strtoul(*pptr, &end, 0);
 if (value > 65535 || *pptr == end || (*end != ' ' && *end != '\t')) {
  printf("%s: %s 16-bit %s value set to zero\n",
      name, what, *end == 0 ? "incomplete" : "invalid");
  return (0);
 }
 *pptr = end + 1;
 return ((uint16_t)value);
}

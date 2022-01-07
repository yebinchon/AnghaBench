
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,char const) ;

__attribute__((used)) static int
valid_format(const char *fmt)
{
 unsigned conversions = 0;

 while (*fmt != '\0') {

  if (*fmt != '%') {
   fmt++;
   continue;
  }
  fmt++;


  if (*fmt == '%') {
   fmt++;
   continue;
  }


  while (*fmt != '\0' && strchr("#0- +'", *fmt)) {
   fmt++;
  }


  while (*fmt != '\0' && strchr("0123456789", *fmt)) {
   fmt++;
  }


  if (*fmt == '.') {
   fmt++;
   while (*fmt != '\0' && strchr("0123456789", *fmt)) {
    fmt++;
   }
  }


  switch (*fmt) {
      case 'A':
      case 'a':
      case 'E':
      case 'e':
      case 'F':
      case 'f':
      case 'G':
      case 'g':

   conversions++;
   break;
      default:

   return 0;
  }
 }


 return (conversions == 1);
}

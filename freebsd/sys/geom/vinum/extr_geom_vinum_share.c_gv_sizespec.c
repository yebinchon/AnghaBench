
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int off_t ;



off_t
gv_sizespec(char *spec)
{
 uint64_t size;
 char *s;
 int sign;

 size = 0;
 sign = 1;
 if (spec != ((void*)0)) {
  s = spec;
  if (*s == '-') {
   sign = -1;
   s++;
  }


  if ((*s >= '0') && (*s <= '9')) {


   while ((*s >= '0') && (*s <= '9'))

    size = size * 10 + *s++ - '0';

   switch (*s) {
   case '\0':
    return size * sign;

   case 'B':
   case 'b':
   case 'S':
   case 's':
    return size * sign * 512;

   case 'K':
   case 'k':
    return size * sign * 1024;

   case 'M':
   case 'm':
    return size * sign * 1024 * 1024;

   case 'G':
   case 'g':
    return size * sign * 1024 * 1024 * 1024;
   }
  }
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int errno ;
 unsigned long long strtoull (char*,char**,int) ;
 int tolower (char) ;

__attribute__((used)) static unsigned long long
getsize(char *s)
{
 int sh;
 unsigned long long length;
 char *suffix;







 length = strtoull(s, &suffix, 10);
 sh = 0;
 switch (tolower(*suffix)) {
 case 'e':
  sh = 60;
  break;
 case 'p':
  sh = 50;
  break;
 case 't':
  sh = 40;
  break;
 case 'g':
  sh = 30;
  break;
 case 'm':
  sh = 20;
  break;
 case 'k':
  sh = 10;
  break;
 case 'b':
  sh = 9;
  break;
 case '\0':
  break;
 default:
  errno = EINVAL;
  return 0;
 }
 if (sh) {
  unsigned long long l;

  l = length;
  length <<= sh;

  if ((length >> sh) != l) {
   errno = ERANGE;
   return 0;
  }
 }

 return length;
}

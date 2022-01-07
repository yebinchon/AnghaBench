
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char) ;
 int odadd (char*) ;
 char* odformatfp (char,char const*) ;
 char* odformatint (char,char const*) ;

__attribute__((used)) static void
odformat(const char *fmt)
{
 char fchar;

 while (*fmt != '\0') {
  switch ((fchar = *fmt++)) {
  case 'a':
   odadd("16/1 \"%3_u \" \"\\n\"");
   break;
  case 'c':
   odadd("16/1 \"%3_c \" \"\\n\"");
   break;
  case 'o': case 'u': case 'd': case 'x':
   fmt = odformatint(fchar, fmt);
   break;
  case 'f':
   fmt = odformatfp(fchar, fmt);
   break;
  default:
   errx(1, "%c: unrecognised format character", fchar);
  }
 }
}

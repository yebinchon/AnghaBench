
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlat {char const* str; int val; } ;


 int errx (int,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *
lookup(struct xlat *xlat, int val, int base)
{
 static char tmp[16];

 for (; xlat->str != ((void*)0); xlat++)
  if (xlat->val == val)
   return (xlat->str);
 switch (base) {
  case 8:
   sprintf(tmp, "0%o", val);
   break;
  case 16:
   sprintf(tmp, "0x%x", val);
   break;
  case 10:
   sprintf(tmp, "%u", val);
   break;
  default:
   errx(1,"Unknown lookup base");
   break;
 }
 return (tmp);
}

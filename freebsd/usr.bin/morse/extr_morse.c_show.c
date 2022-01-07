
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lflag ;
 int printf (char*,...) ;
 scalar_t__ sflag ;

__attribute__((used)) static void
show(const char *s)
{
 if (lflag) {
  printf("%s ", s);
 } else if (sflag) {
  printf(" %s\n", s);
 } else {
  for (; *s; ++s)
   printf(" %s", *s == '.' ? *(s + 1) == '\0' ? "dit" :
       "di" : "dah");
  printf("\n");
 }
}

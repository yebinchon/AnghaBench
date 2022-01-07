
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cap2str (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_caps(int caps)
{
 int i, need_coma;

 need_coma = 0;
 printf("<");
 for (i = 0; i < 32; i++) {
  if (caps & (1 << i)) {
   if (need_coma)
    printf(",");
   printf("%s", cap2str(1 << i));
   need_coma = 1;
  }
 }
 printf(">");
}

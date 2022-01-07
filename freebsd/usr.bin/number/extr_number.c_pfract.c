
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * name3 ;
 int printf (char*,...) ;

__attribute__((used)) static void
pfract(int len)
{
 static char const * const pref[] = { "", "ten-", "hundred-" };

 switch(len) {
 case 1:
  (void)printf("tenths.\n");
  break;
 case 2:
  (void)printf("hundredths.\n");
  break;
 default:
  (void)printf("%s%sths.\n", pref[len % 3], name3[len / 3]);
  break;
 }
}

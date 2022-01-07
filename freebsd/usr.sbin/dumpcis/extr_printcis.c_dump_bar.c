
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int print_size (int ) ;
 int printf (char*,...) ;
 int tpl32 (int*) ;

__attribute__((used)) static void
dump_bar(u_char *p, int len)
{
 if (len < 6) {
  printf("\tWrong length for BAR tuple\n");
  return;
 }
 printf("\tBAR %d: size = ", *p & 7);
 print_size(tpl32(p + 2));
 printf(", %s%s%s%s\n",
        (*p & 0x10) ? "I/O" : "Memory",
        (*p & 0x20) ? ", Prefetch" : "",
        (*p & 0x40) ? ", Cacheable" : "",
        (*p & 0x80) ? ", <1Mb" : "");
}

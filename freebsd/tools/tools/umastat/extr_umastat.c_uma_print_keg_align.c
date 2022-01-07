
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uma_keg {int uk_align; } ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void
uma_print_keg_align(struct uma_keg *ukp, const char *spaces)
{

 switch(ukp->uk_align) {
 case 129:
  printf("%suk_align = UMA_ALIGN_PTR;\n", spaces);
  break;
 case 128:
  printf("%suk_align = UMA_ALIGN_SHORT;\n", spaces);
  break;

 case 132:
  printf("%suk_align = UMA_ALIGN_CHAR;\n", spaces);
  break;

 case 133:
  printf("%suk_align = UMA_ALIGN_CACHE;\n", spaces);
  break;

 default:
  printf("%suk_align = %d\n", spaces, ukp->uk_align);
 }
}

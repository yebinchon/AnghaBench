
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uma_keg {int uk_flags; } ;
struct TYPE_2__ {int fi_flag; char* fi_name; } ;


 TYPE_1__* flaginfo ;
 int flaginfo_count ;
 int printf (char*,...) ;

__attribute__((used)) static void
uma_print_keg_flags(struct uma_keg *ukp, const char *spaces)
{
 int count, i;

 if (!ukp->uk_flags) {
  printf("%suk_flags = 0;\n", spaces);
  return;
 }

 printf("%suk_flags = ", spaces);
 for (i = 0, count = 0; i < flaginfo_count; i++) {
  if (ukp->uk_flags & flaginfo[i].fi_flag) {
   if (count++ > 0)
    printf(" | ");
   printf("%s", flaginfo[i].fi_name);
  }

 }
 printf(";\n");
}

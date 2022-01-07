
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int grouping; int thousands_sep; int decimal_point; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 int close_category (int *) ;
 TYPE_1__ numeric ;
 int * open_category () ;
 scalar_t__ putl_category (int ,int *) ;

void
dump_numeric(void)
{
 FILE *f;

 if ((f = open_category()) == ((void*)0)) {
  return;
 }

 if ((putl_category(numeric.decimal_point, f) == EOF) ||
     (putl_category(numeric.thousands_sep, f) == EOF) ||
     (putl_category(numeric.grouping, f) == EOF)) {
  return;
 }
 close_category(f);
}

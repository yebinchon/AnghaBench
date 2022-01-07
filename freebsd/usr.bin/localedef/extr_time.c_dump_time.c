
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ampm_fmt; scalar_t__ c_fmt; scalar_t__ date_fmt; scalar_t__ pm; scalar_t__ am; scalar_t__ x_fmt; scalar_t__ X_fmt; scalar_t__* weekday; scalar_t__* wday; scalar_t__* month; scalar_t__* mon; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 int close_category (int *) ;
 int * open_category () ;
 scalar_t__ putl_category (scalar_t__,int *) ;
 TYPE_1__ tm ;

void
dump_time(void)
{
 FILE *f;
 int i;

 if ((f = open_category()) == ((void*)0)) {
  return;
 }

 for (i = 0; i < 12; i++) {
  if (putl_category(tm.mon[i], f) == EOF) {
   return;
  }
 }
 for (i = 0; i < 12; i++) {
  if (putl_category(tm.month[i], f) == EOF) {
   return;
  }
 }
 for (i = 0; i < 7; i++) {
  if (putl_category(tm.wday[i], f) == EOF) {
   return;
  }
 }
 for (i = 0; i < 7; i++) {
  if (putl_category(tm.weekday[i], f) == EOF) {
   return;
  }
 }







 if ((putl_category(tm.X_fmt, f) == EOF) ||
     (putl_category(tm.x_fmt, f) == EOF) ||
     (putl_category(tm.c_fmt, f) == EOF) ||
     (putl_category(tm.am, f) == EOF) ||
     (putl_category(tm.pm, f) == EOF) ||
     (putl_category(tm.date_fmt ? tm.date_fmt : tm.c_fmt, f) == EOF) ||
     (putl_category(tm.ampm_fmt, f) == EOF)) {
  return;
 }
 close_category(f);
}

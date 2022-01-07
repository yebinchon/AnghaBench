
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_n_sign_posn; int int_p_sign_posn; int int_n_sep_by_space; int int_p_sep_by_space; int int_n_cs_precedes; int int_p_cs_precedes; int n_sign_posn; int p_sign_posn; int n_sep_by_space; int n_cs_precedes; int p_sep_by_space; int p_cs_precedes; int frac_digits; int int_frac_digits; int negative_sign; int positive_sign; int mon_grouping; int mon_thousands_sep; int mon_decimal_point; int currency_symbol; int int_curr_symbol; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 int close_category (int *) ;
 TYPE_1__ mon ;
 int * open_category () ;
 scalar_t__ putl_category (int ,int *) ;

void
dump_monetary(void)
{
 FILE *f;

 if ((f = open_category()) == ((void*)0)) {
  return;
 }

 if ((putl_category(mon.int_curr_symbol, f) == EOF) ||
     (putl_category(mon.currency_symbol, f) == EOF) ||
     (putl_category(mon.mon_decimal_point, f) == EOF) ||
     (putl_category(mon.mon_thousands_sep, f) == EOF) ||
     (putl_category(mon.mon_grouping, f) == EOF) ||
     (putl_category(mon.positive_sign, f) == EOF) ||
     (putl_category(mon.negative_sign, f) == EOF) ||
     (putl_category(mon.int_frac_digits, f) == EOF) ||
     (putl_category(mon.frac_digits, f) == EOF) ||
     (putl_category(mon.p_cs_precedes, f) == EOF) ||
     (putl_category(mon.p_sep_by_space, f) == EOF) ||
     (putl_category(mon.n_cs_precedes, f) == EOF) ||
     (putl_category(mon.n_sep_by_space, f) == EOF) ||
     (putl_category(mon.p_sign_posn, f) == EOF) ||
     (putl_category(mon.n_sign_posn, f) == EOF) ||
     (putl_category(mon.int_p_cs_precedes, f) == EOF) ||
     (putl_category(mon.int_n_cs_precedes, f) == EOF) ||
     (putl_category(mon.int_p_sep_by_space, f) == EOF) ||
     (putl_category(mon.int_n_sep_by_space, f) == EOF) ||
     (putl_category(mon.int_p_sign_posn, f) == EOF) ||
     (putl_category(mon.int_n_sign_posn, f) == EOF)) {
  return;
 }
 close_category(f);
}

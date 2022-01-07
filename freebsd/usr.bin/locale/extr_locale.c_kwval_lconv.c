
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {char* int_curr_symbol; char* currency_symbol; char* mon_decimal_point; char* mon_thousands_sep; char* positive_sign; char* negative_sign; char int_frac_digits; char frac_digits; char p_cs_precedes; char p_sep_by_space; char n_cs_precedes; char n_sep_by_space; char p_sign_posn; char n_sign_posn; char int_p_cs_precedes; char int_p_sep_by_space; char int_n_cs_precedes; char int_n_sep_by_space; char int_p_sign_posn; char int_n_sign_posn; int mon_grouping; int grouping; } ;
 char* format_grouping (int ) ;
 struct lconv* localeconv () ;

char *
kwval_lconv(int id)
{
 struct lconv *lc;
 char *rval;

 rval = ((void*)0);
 lc = localeconv();
 switch (id) {
  case 147:
   rval = format_grouping(lc->grouping);
   break;
  case 146:
   rval = lc->int_curr_symbol;
   break;
  case 149:
   rval = lc->currency_symbol;
   break;
  case 138:
   rval = lc->mon_decimal_point;
   break;
  case 136:
   rval = lc->mon_thousands_sep;
   break;
  case 137:
   rval = format_grouping(lc->mon_grouping);
   break;
  case 131:
   rval = lc->positive_sign;
   break;
  case 135:
   rval = lc->negative_sign;
   break;
  case 145:
   rval = &(lc->int_frac_digits);
   break;
  case 148:
   rval = &(lc->frac_digits);
   break;
  case 130:
   rval = &(lc->p_cs_precedes);
   break;
  case 129:
   rval = &(lc->p_sep_by_space);
   break;
  case 134:
   rval = &(lc->n_cs_precedes);
   break;
  case 133:
   rval = &(lc->n_sep_by_space);
   break;
  case 128:
   rval = &(lc->p_sign_posn);
   break;
  case 132:
   rval = &(lc->n_sign_posn);
   break;
  case 141:
   rval = &(lc->int_p_cs_precedes);
   break;
  case 140:
   rval = &(lc->int_p_sep_by_space);
   break;
  case 144:
   rval = &(lc->int_n_cs_precedes);
   break;
  case 143:
   rval = &(lc->int_n_sep_by_space);
   break;
  case 139:
   rval = &(lc->int_p_sign_posn);
   break;
  case 142:
   rval = &(lc->int_n_sign_posn);
   break;
  default:
   break;
 }
 return (rval);
}

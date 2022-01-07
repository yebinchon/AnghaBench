
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* int_frac_digits; char* frac_digits; char* p_cs_precedes; char* p_sep_by_space; char* n_cs_precedes; char* n_sep_by_space; char* p_sign_posn; char* n_sign_posn; char* int_p_cs_precedes; char* int_n_cs_precedes; char* int_p_sep_by_space; char* int_n_sep_by_space; char* int_p_sign_posn; char* int_n_sign_posn; char* mon_grouping; } ;


 int INTERR ;
 int asprintf (char**,char*,int) ;
 int fprintf (int ,char*) ;
 int last_kw ;
 TYPE_1__ mon ;
 int stderr ;

void
add_monetary_num(int n)
{
 char *str = ((void*)0);

 (void) asprintf(&str, "%d", n);
 if (str == ((void*)0)) {
  fprintf(stderr, "out of memory");
  return;
 }

 switch (last_kw) {
 case 141:
  mon.int_frac_digits = str;
  break;
 case 142:
  mon.frac_digits = str;
  break;
 case 130:
  mon.p_cs_precedes = str;
  break;
 case 129:
  mon.p_sep_by_space = str;
  break;
 case 133:
  mon.n_cs_precedes = str;
  break;
 case 132:
  mon.n_sep_by_space = str;
  break;
 case 128:
  mon.p_sign_posn = str;
  break;
 case 131:
  mon.n_sign_posn = str;
  break;
 case 137:
  mon.int_p_cs_precedes = str;
  break;
 case 140:
  mon.int_n_cs_precedes = str;
  break;
 case 136:
  mon.int_p_sep_by_space = str;
  break;
 case 139:
  mon.int_n_sep_by_space = str;
  break;
 case 135:
  mon.int_p_sign_posn = str;
  break;
 case 138:
  mon.int_n_sign_posn = str;
  break;
 case 134:
  mon.mon_grouping = str;
  break;
 default:
  INTERR;
  break;
 }
}

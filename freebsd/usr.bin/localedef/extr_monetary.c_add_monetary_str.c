
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_2__ {char* int_curr_symbol; char* currency_symbol; char* mon_decimal_point; char* mon_thousands_sep; char* positive_sign; char* negative_sign; } ;


 int INTERR ;






 int free (char*) ;
 int last_kw ;
 TYPE_1__ mon ;
 char* to_mb_string (char*) ;

void
add_monetary_str(wchar_t *wcs)
{
 char *str;

 if ((str = to_mb_string(wcs)) == ((void*)0)) {
  INTERR;
  return;
 }
 free(wcs);
 switch (last_kw) {
 case 132:
  mon.int_curr_symbol = str;
  break;
 case 133:
  mon.currency_symbol = str;
  break;
 case 131:
  mon.mon_decimal_point = str;
  break;
 case 130:
  mon.mon_thousands_sep = str;
  break;
 case 128:
  mon.positive_sign = str;
  break;
 case 129:
  mon.negative_sign = str;
  break;
 default:
  free(str);
  INTERR;
  break;
 }
}

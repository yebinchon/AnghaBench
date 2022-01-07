
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_2__ {char* decimal_point; char* thousands_sep; } ;


 int INTERR ;


 int free (char*) ;
 int last_kw ;
 TYPE_1__ numeric ;
 char* to_mb_string (char*) ;

void
add_numeric_str(wchar_t *wcs)
{
 char *str;

 if ((str = to_mb_string(wcs)) == ((void*)0)) {
  INTERR;
  return;
 }
 free(wcs);

 switch (last_kw) {
 case 129:
  numeric.decimal_point = str;
  break;
 case 128:
  numeric.thousands_sep = str;
  break;
 default:
  free(str);
  INTERR;
  break;
 }
}

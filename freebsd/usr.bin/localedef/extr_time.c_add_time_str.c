
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_2__ {char* c_fmt; char* x_fmt; char* X_fmt; char* ampm_fmt; char* date_fmt; } ;


 int INTERR ;
 int free (char*) ;
 int last_kw ;
 TYPE_1__ tm ;
 char* to_mb_string (char*) ;

void
add_time_str(wchar_t *wcs)
{
 char *str;

 if ((str = to_mb_string(wcs)) == ((void*)0)) {
  INTERR;
  return;
 }
 free(wcs);

 switch (last_kw) {
 case 133:
  tm.c_fmt = str;
  break;
 case 134:
  tm.x_fmt = str;
  break;
 case 129:
  tm.X_fmt = str;
  break;
 case 128:
  tm.ampm_fmt = str;
  break;
 case 135:




  tm.date_fmt = str;
  break;
 case 132:
 case 130:
 case 131:

  free(str);
  break;
 default:
  free(str);
  INTERR;
  break;
 }
}

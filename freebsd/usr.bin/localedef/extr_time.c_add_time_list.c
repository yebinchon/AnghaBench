
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_2__ {char* am; char* pm; int weekday; int wday; int month; int mon; } ;


 int INTERR ;







 int add_list (int ,char*,int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int last_kw ;
 int stderr ;
 TYPE_1__ tm ;
 char* to_mb_string (char*) ;

void
add_time_list(wchar_t *wcs)
{
 char *str;

 if ((str = to_mb_string(wcs)) == ((void*)0)) {
  INTERR;
  return;
 }
 free(wcs);

 switch (last_kw) {
 case 133:
  add_list(tm.mon, str, 12);
  break;
 case 128:
  add_list(tm.month, str, 12);
  break;
 case 134:
  add_list(tm.wday, str, 7);
  break;
 case 130:
  add_list(tm.weekday, str, 7);
  break;
 case 131:
  if (tm.am == ((void*)0)) {
   tm.am = str;
  } else if (tm.pm == ((void*)0)) {
   tm.pm = str;
  } else {
   fprintf(stderr,"too many list elements");
   free(str);
  }
  break;
 case 132:
 case 129:
  free(str);
  break;
 default:
  free(str);
  INTERR;
  break;
 }
}

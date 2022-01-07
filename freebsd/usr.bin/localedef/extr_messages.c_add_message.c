
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_2__ {char* yesstr; char* nostr; char* yesexpr; char* noexpr; } ;


 int INTERR ;




 int free (char*) ;
 int last_kw ;
 TYPE_1__ msgs ;
 char* to_mb_string (char*) ;

void
add_message(wchar_t *wcs)
{
 char *str;

 if ((str = to_mb_string(wcs)) == ((void*)0)) {
  INTERR;
  return;
 }
 free(wcs);

 switch (last_kw) {
 case 128:
  msgs.yesstr = str;
  break;
 case 130:
  msgs.nostr = str;
  break;
 case 129:
  msgs.yesexpr = str;
  break;
 case 131:
  msgs.noexpr = str;
  break;
 default:
  free(str);
  INTERR;
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__* realloc (scalar_t__*,int) ;
 int wideidx ;
 scalar_t__* widestr ;
 int widesz ;
 int yyerror (char*) ;

void
add_wcs(wchar_t c)
{
 if ((wideidx + 1) >= widesz) {
  widesz += 64;
  widestr = realloc(widestr, (widesz * sizeof (wchar_t)));
  if (widestr == ((void*)0)) {
   yyerror("out of memory");
   wideidx = 0;
   widesz = 0;
   return;
  }
 }

 widestr[wideidx++] = c;
 widestr[wideidx] = 0;
}

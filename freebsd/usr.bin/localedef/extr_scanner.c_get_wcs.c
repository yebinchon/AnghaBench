
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * wcsdup (char*) ;
 scalar_t__ wideidx ;
 int * widestr ;
 scalar_t__ widesz ;
 int yyerror (char*) ;

wchar_t *
get_wcs(void)
{
 wchar_t *ws = widestr;
 wideidx = 0;
 widestr = ((void*)0);
 widesz = 0;
 if (ws == ((void*)0)) {
  if ((ws = wcsdup(L"")) == ((void*)0)) {
   yyerror("out of memory");
  }
 }
 return (ws);
}

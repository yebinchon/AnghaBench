
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ iswblank (int) ;
 int numchars ;
 int numfields ;

__attribute__((used)) static wchar_t *
skip(wchar_t *str)
{
 int nchars, nfields;

 for (nfields = 0; *str != L'\0' && nfields++ != numfields; ) {
  while (iswblank(*str))
   str++;
  while (*str != L'\0' && !iswblank(*str))
   str++;
 }
 for (nchars = numchars; nchars-- && *str != L'\0'; ++str)
  ;
 return(str);
}

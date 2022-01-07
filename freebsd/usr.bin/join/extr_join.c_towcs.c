
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * malloc (size_t) ;
 size_t mbsrtowcs (int *,char const**,size_t,int *) ;

__attribute__((used)) static wchar_t *
towcs(const char *s)
{
 wchar_t *wcs;
 size_t n;

 if ((n = mbsrtowcs(((void*)0), &s, 0, ((void*)0))) == (size_t)-1)
  return (((void*)0));
 if ((wcs = malloc((n + 1) * sizeof(*wcs))) == ((void*)0))
  return (((void*)0));
 mbsrtowcs(wcs, &s, n + 1, ((void*)0));
 return (wcs);
}

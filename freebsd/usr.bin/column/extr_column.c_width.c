
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int wcwidth (int const) ;

__attribute__((used)) static int
width(const wchar_t *wcs)
{
 int w, cw;

 for (w = 0; *wcs != L'\0'; wcs++)
  if ((cw = wcwidth(*wcs)) > 0)
   w += cw;
 return (w);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int EINVAL ;
 int ERANGE ;
 size_t WideCharToMultiByte (int ,int ,int const*,int,char*,size_t,int *,int *) ;
 int errno ;

int xwcstoutf(char *utf, const wchar_t *wcs, size_t utflen)
{
 if (!wcs || !utf || utflen < 1) {
  errno = EINVAL;
  return -1;
 }
 utflen = WideCharToMultiByte(CP_UTF8, 0, wcs, -1, utf, utflen, ((void*)0), ((void*)0));
 if (utflen)
  return utflen - 1;
 errno = ERANGE;
 return -1;
}

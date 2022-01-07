
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int SIZE_MAX ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int free (int*) ;
 scalar_t__ iflag ;
 int* malloc (size_t) ;
 size_t mbstowcs (int*,char const*,size_t) ;
 scalar_t__ numchars ;
 scalar_t__ numfields ;
 int skip (int*) ;
 int towlower (int) ;
 int* wcsdup (int ) ;

__attribute__((used)) static wchar_t *
convert(const char *str)
{
 size_t n;
 wchar_t *buf, *ret, *p;

 if ((n = mbstowcs(((void*)0), str, 0)) == (size_t)-1)
  return (((void*)0));
 if (SIZE_MAX / sizeof(*buf) < n + 1)
  errx(1, "conversion buffer length overflow");
 if ((buf = malloc((n + 1) * sizeof(*buf))) == ((void*)0))
  err(1, "malloc");
 if (mbstowcs(buf, str, n + 1) != n)
  errx(1, "internal mbstowcs() error");

 if (n > 0 && buf[n - 1] == L'\n')
  buf[n - 1] = L'\0';


 if (numfields || numchars) {
  if ((ret = wcsdup(skip(buf))) == ((void*)0))
   err(1, "wcsdup");
  free(buf);
 } else
  ret = buf;

 if (iflag) {
  for (p = ret; *p != L'\0'; p++)
   *p = towlower(*p);
 }

 return (ret);
}

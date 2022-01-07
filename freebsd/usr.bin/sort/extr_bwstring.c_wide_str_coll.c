
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ EILSEQ ;
 scalar_t__ errno ;
 int wcscmp (int const*,int const*) ;
 int wcscoll (int const*,int const*) ;

__attribute__((used)) static int
wide_str_coll(const wchar_t *s1, const wchar_t *s2)
{
 int ret = 0;

 errno = 0;
 ret = wcscoll(s1, s2);
 if (errno == EILSEQ) {
  errno = 0;
  ret = wcscmp(s1, s2);
  if (errno != 0) {
   for (size_t i = 0; ; ++i) {
    wchar_t c1 = s1[i];
    wchar_t c2 = s2[i];
    if (c1 == L'\0')
     return ((c2 == L'\0') ? 0 : -1);
    if (c2 == L'\0')
     return (+1);
    if (c1 == c2)
     continue;
    return ((int)(c1 - c2));
   }
  }
 }
 return (ret);
}

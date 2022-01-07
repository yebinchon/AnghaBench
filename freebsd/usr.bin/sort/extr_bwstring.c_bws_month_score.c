
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {unsigned char* cstr; int * wstr; } ;
struct bwstring {int len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 scalar_t__* cmonths ;
 scalar_t__ isblank (unsigned char const) ;
 scalar_t__ iswblank (int const) ;
 scalar_t__ strstr (char const*,char*) ;
 int const* wcsstr (int const*,scalar_t__) ;
 scalar_t__* wmonths ;

int
bws_month_score(const struct bwstring *s0)
{

 if (MB_CUR_MAX == 1) {
  const unsigned char *end, *s;

  s = s0->data.cstr;
  end = s + s0->len;

  while (isblank(*s) && s < end)
   ++s;

  for (int i = 11; i >= 0; --i) {
   if (cmonths[i] &&
       (s == (unsigned char*)strstr((const char*)s, (char*)(cmonths[i]))))
    return (i);
  }

 } else {
  const wchar_t *end, *s;

  s = s0->data.wstr;
  end = s + s0->len;

  while (iswblank(*s) && s < end)
   ++s;

  for (int i = 11; i >= 0; --i) {
   if (wmonths[i] && (s == wcsstr(s, wmonths[i])))
    return (i);
  }
 }

 return (-1);
}

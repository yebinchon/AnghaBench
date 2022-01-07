
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {unsigned char* cstr; int * wstr; } ;
struct bwstring {int len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 scalar_t__ isblank (unsigned char) ;
 int isprint (unsigned char) ;
 scalar_t__ iswblank (int ) ;
 int iswprint (int ) ;
 double strtod (char*,char**) ;
 double wcstod (int *,int **) ;

double
bwstod(struct bwstring *s0, bool *empty)
{
 double ret = 0;

 if (MB_CUR_MAX == 1) {
  unsigned char *end, *s;
  char *ep;

  s = s0->data.cstr;
  end = s + s0->len;
  ep = ((void*)0);

  while (isblank(*s) && s < end)
   ++s;

  if (!isprint(*s)) {
   *empty = 1;
   return (0);
  }

  ret = strtod((char*)s, &ep);
  if ((unsigned char*) ep == s) {
   *empty = 1;
   return (0);
  }
 } else {
  wchar_t *end, *ep, *s;

  s = s0->data.wstr;
  end = s + s0->len;
  ep = ((void*)0);

  while (iswblank(*s) && s < end)
   ++s;

  if (!iswprint(*s)) {
   *empty = 1;
   return (0);
  }

  ret = wcstod(s, &ep);
  if (ep == s) {
   *empty = 1;
   return (0);
  }
 }

 *empty = 0;
 return (ret);
}

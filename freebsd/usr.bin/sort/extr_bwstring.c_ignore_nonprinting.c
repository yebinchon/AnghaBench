
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {unsigned char* cstr; int * wstr; } ;
struct bwstring {size_t len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;
 int bws_setlen (struct bwstring*,size_t) ;
 scalar_t__ isprint (unsigned char) ;
 scalar_t__ iswprint (int ) ;

struct bwstring *
ignore_nonprinting(struct bwstring *str)
{
 size_t newlen = str->len;

 if (MB_CUR_MAX == 1) {
  unsigned char *dst, *end, *src;
  unsigned char c;

  src = str->data.cstr;
  dst = src;
  end = src + str->len;

  while (src < end) {
   c = *src;
   if (isprint(c)) {
    *dst = c;
    ++dst;
    ++src;
   } else {
    ++src;
    --newlen;
   }
  }
 } else {
  wchar_t *dst, *end, *src;
  wchar_t c;

  src = str->data.wstr;
  dst = src;
  end = src + str->len;

  while (src < end) {
   c = *src;
   if (iswprint(c)) {
    *dst = c;
    ++dst;
    ++src;
   } else {
    ++src;
    --newlen;
   }
  }
 }
 bws_setlen(str, newlen);

 return (str);
}

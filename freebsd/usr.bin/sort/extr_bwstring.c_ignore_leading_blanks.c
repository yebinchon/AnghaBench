
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {unsigned char* cstr; int * wstr; } ;
struct bwstring {int len; TYPE_1__ data; } ;


 int BWSLEN (struct bwstring*) ;
 int MB_CUR_MAX ;
 int bws_setlen (struct bwstring*,size_t) ;
 scalar_t__ isblank (unsigned char) ;
 scalar_t__ iswblank (int ) ;

struct bwstring *
ignore_leading_blanks(struct bwstring *str)
{

 if (MB_CUR_MAX == 1) {
  unsigned char *dst, *end, *src;

  src = str->data.cstr;
  dst = src;
  end = src + str->len;

  while (src < end && isblank(*src))
   ++src;

  if (src != dst) {
   size_t newlen;

   newlen = BWSLEN(str) - (src - dst);

   while (src < end) {
    *dst = *src;
    ++dst;
    ++src;
   }
   bws_setlen(str, newlen);
  }
 } else {
  wchar_t *dst, *end, *src;

  src = str->data.wstr;
  dst = src;
  end = src + str->len;

  while (src < end && iswblank(*src))
   ++src;

  if (src != dst) {

   size_t newlen = BWSLEN(str) - (src - dst);

   while (src < end) {
    *dst = *src;
    ++dst;
    ++src;
   }
   bws_setlen(str, newlen);

  }
 }
 return (str);
}

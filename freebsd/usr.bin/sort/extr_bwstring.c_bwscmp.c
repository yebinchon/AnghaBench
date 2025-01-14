
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwstring {size_t len; } ;


 int bwsncmp (struct bwstring const*,struct bwstring const*,size_t,size_t) ;

int
bwscmp(const struct bwstring *bws1, const struct bwstring *bws2, size_t offset)
{
 size_t len1, len2, cmp_len;
 int res;

 len1 = bws1->len;
 len2 = bws2->len;

 len1 -= offset;
 len2 -= offset;

 cmp_len = len1;

 if (len2 < cmp_len)
  cmp_len = len2;

 res = bwsncmp(bws1, bws2, offset, cmp_len);

 if (res == 0) {
  if( len1 < len2)
   res = -1;
  else if (len2 < len1)
   res = +1;
 }

 return (res);
}

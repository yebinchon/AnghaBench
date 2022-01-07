
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct frameheader {int len; int * data; } ;


 struct frameheader* FrameHeaders ;
 scalar_t__ memcmp (int const*,int const*,size_t) ;

int
hdlc_Detect(u_char const **cp, unsigned n, int issync)
{
  const struct frameheader *fh;
  const u_char *h;
  size_t len, cmp;

  while (n) {
    for (fh = FrameHeaders; fh->len; fh++) {
      h = issync ? fh->data + 1 : fh->data;
      len = issync ? fh->len - 1 : fh->len;
      cmp = n >= len ? len : n;
      if (memcmp(*cp, h, cmp) == 0)
        return cmp == len;
    }
    n--;
    (*cp)++;
  }

  return 0;
}

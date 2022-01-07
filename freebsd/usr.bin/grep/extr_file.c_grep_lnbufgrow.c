
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grep_realloc (int ,size_t) ;
 int lnbuf ;
 size_t lnbuflen ;

__attribute__((used)) static inline int
grep_lnbufgrow(size_t newlen)
{

 if (lnbuflen < newlen) {
  lnbuf = grep_realloc(lnbuf, newlen);
  lnbuflen = newlen;
 }

 return (0);
}

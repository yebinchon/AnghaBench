
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int mbs ;


 int MB_LEN_MAX ;
 size_t mbrlen (char*,int ,int *) ;
 int memset (int *,int ,int) ;
 int strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;

void
stripsuffix(char *p, const char *suffix, size_t suffixlen)
{
 char *q, *r;
 mbstate_t mbs;
 size_t n;

 if (suffixlen && (q = strchr(p, '\0') - suffixlen) > p &&
     strcmp(suffix, q) == 0) {

  memset(&mbs, 0, sizeof(mbs));
  for (r = p; r < q; r += n) {
   n = mbrlen(r, MB_LEN_MAX, &mbs);
   if (n == (size_t)-1 || n == (size_t)-2) {
    memset(&mbs, 0, sizeof(mbs));
    n = 1;
   }
  }

  if (q == r)
   *q = '\0';
 }
}

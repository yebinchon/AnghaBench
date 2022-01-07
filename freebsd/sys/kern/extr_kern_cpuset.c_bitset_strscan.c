
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitset {int * __bits; } ;


 int BIT_ZERO (int,struct bitset*) ;
 int __bitset_words (int) ;
 scalar_t__ isxdigit (char const) ;
 int sscanf (char const*,char*,int *) ;

__attribute__((used)) static int
bitset_strscan(struct bitset *set, int setlen, const char *buf)
{
 int i, ret;
 const char *p;

 BIT_ZERO(setlen, set);
 p = buf;
 for (i = 0; i < __bitset_words(setlen); i++) {
  if (*p == ',') {
   p++;
   continue;
  }
  ret = sscanf(p, "%lx", &set->__bits[i]);
  if (ret == 0 || ret == -1)
   break;
  while (isxdigit(*p))
   p++;
 }
 return (p - buf);
}

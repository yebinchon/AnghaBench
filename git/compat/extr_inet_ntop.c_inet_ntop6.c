
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ENOSPC ;
 int NS_IN6ADDRSZ ;
 int NS_INT16SZ ;
 int errno ;
 int inet_ntop4 (int const*,char*,int) ;
 int memset (unsigned int*,char,int) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int strlcpy (char*,char*,size_t) ;
 int strlen (char*) ;

__attribute__((used)) static const char *
inet_ntop6(const u_char *src, char *dst, size_t size)
{







 char tmp[sizeof "ffff:ffff:ffff:ffff:ffff:ffff:255.255.255.255"], *tp;
 struct { int base, len; } best, cur;
 unsigned int words[NS_IN6ADDRSZ / NS_INT16SZ];
 int i;






 memset(words, '\0', sizeof words);
 for (i = 0; i < NS_IN6ADDRSZ; i++)
  words[i / 2] |= (src[i] << ((1 - (i % 2)) << 3));
 best.base = -1;
 best.len = 0;
 cur.base = -1;
 cur.len = 0;
 for (i = 0; i < (NS_IN6ADDRSZ / NS_INT16SZ); i++) {
  if (words[i] == 0) {
   if (cur.base == -1)
    cur.base = i, cur.len = 1;
   else
    cur.len++;
  } else {
   if (cur.base != -1) {
    if (best.base == -1 || cur.len > best.len)
     best = cur;
    cur.base = -1;
   }
  }
 }
 if (cur.base != -1) {
  if (best.base == -1 || cur.len > best.len)
   best = cur;
 }
 if (best.base != -1 && best.len < 2)
  best.base = -1;




 tp = tmp;
 for (i = 0; i < (NS_IN6ADDRSZ / NS_INT16SZ); i++) {

  if (best.base != -1 && i >= best.base &&
      i < (best.base + best.len)) {
   if (i == best.base)
    *tp++ = ':';
   continue;
  }

  if (i != 0)
   *tp++ = ':';

  if (i == 6 && best.base == 0 &&
      (best.len == 6 || (best.len == 5 && words[5] == 0xffff))) {
   if (!inet_ntop4(src+12, tp, sizeof tmp - (tp - tmp)))
    return (((void*)0));
   tp += strlen(tp);
   break;
  }
  tp += snprintf(tp, sizeof tmp - (tp - tmp), "%x", words[i]);
 }

 if (best.base != -1 && (best.base + best.len) ==
     (NS_IN6ADDRSZ / NS_INT16SZ))
  *tp++ = ':';
 *tp++ = '\0';




 if ((size_t)(tp - tmp) > size) {
  errno = ENOSPC;
  return (((void*)0));
 }
 strlcpy(dst, tmp, size);
 return (dst);
}

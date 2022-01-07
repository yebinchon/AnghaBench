
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef char u_char ;
typedef int gentext ;


 char SLOT_E5 ;
 char* unix2dos ;

int
unix2dosfn(const u_char *un, u_char dn[12], size_t unlen, u_int gen)
{
 int i, j, l;
 int conv = 1;
 const u_char *cp, *dp, *dp1;
 u_char gentext[6], *wcp;
 int shortlen;





 for (i = 0; i < 11; i++)
  dn[i] = ' ';
 dn[11] = 0;





 if (un[0] == '.' && unlen == 1) {
  dn[0] = '.';
  return gen <= 1;
 }
 if (un[0] == '.' && un[1] == '.' && unlen == 2) {
  dn[0] = '.';
  dn[1] = '.';
  return gen <= 1;
 }




 for (cp = un, i = unlen; --i >= 0; cp++)
  if (*cp != ' ' && *cp != '.')
   break;
 if (i < 0)
  return 0;






 dp = dp1 = 0;
 for (cp = un + 1, i = unlen - 1; --i >= 0;) {
  switch (*cp++) {
  case '.':
   if (!dp1)
    dp1 = cp;
   break;
  case ' ':
   break;
  default:
   if (dp1)
    dp = dp1;
   dp1 = 0;
   break;
  }
 }




 if (dp) {
  if (dp1)
   l = dp1 - dp;
  else
   l = unlen - (dp - un);
  for (i = 0, j = 8; i < l && j < 11; i++, j++) {
   if (dp[i] != (dn[j] = unix2dos[dp[i]])
       && conv != 3)
    conv = 2;
   if (!dn[j]) {
    conv = 3;
    dn[j--] = ' ';
   }
  }
  if (i < l)
   conv = 3;
  dp--;
 } else {
  for (dp = cp; *--dp == ' ' || *dp == '.';);
  dp++;
 }

 shortlen = (dp - un) <= 8;




 for (i = j = 0; un < dp && j < 8; i++, j++, un++) {
  if ((*un == ' ') && shortlen)
   dn[j] = ' ';
  else
   dn[j] = unix2dos[*un];
  if ((*un != dn[j])
      && conv != 3)
   conv = 2;
  if (!dn[j]) {
   conv = 3;
   dn[j--] = ' ';
  }
 }
 if (un < dp)
  conv = 3;




 if (!j)
  dn[0] = '_';





 if (dn[0] == 0xe5)
  dn[0] = SLOT_E5;





 if (conv != 3) {
  if (gen > 1)
   return 0;
  return conv;
 }




 for (wcp = gentext + sizeof(gentext); wcp > gentext && gen; gen /= 10)
  *--wcp = gen % 10 + '0';
 if (gen)
  return 0;
 for (i = 8; dn[--i] == ' ';);
 i++;
 if (gentext + sizeof(gentext) - wcp + 1 > 8 - i)
  i = 8 - (gentext + sizeof(gentext) - wcp + 1);
 dn[i++] = '~';
 while (wcp < gentext + sizeof(gentext))
  dn[i++] = *wcp++;
 return 3;
}

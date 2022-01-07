
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef char u_char ;
struct msdosfsmount {int pm_d2u; int pm_flags; } ;
typedef int ssize_t ;
typedef int gentext ;


 char SLOT_E5 ;
 scalar_t__ mbsadjpos (char const**,int,size_t,int,int ,int ) ;
 int unix2doschr (char const**,...) ;

int
unix2dosfn(const u_char *un, u_char dn[12], size_t unlen, u_int gen,
    struct msdosfsmount *pmp)
{
 ssize_t i, j;
 int l;
 int conv = 1;
 const u_char *cp, *dp, *dp1;
 u_char gentext[6], *wcp;
 uint16_t c;





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





 for (cp = un, i = unlen; i > 0;)
  if (unix2doschr(&cp, (size_t *)&i, pmp) == 0)
   return 0;
 dp = dp1 = ((void*)0);
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
   dp1 = ((void*)0);
   break;
  }
 }






 if (dp) {
  if (dp1)
   l = dp1 - dp;
  else
   l = unlen - (dp - un);
  for (cp = dp, i = l, j = 8; i > 0 && j < 11; j++) {
   c = unix2doschr(&cp, (size_t *)&i, pmp);
   if (c & 0xff00) {
    dn[j] = c >> 8;
    if (++j < 11) {
     dn[j] = c;
     if (conv != 3)
      conv = 2;
     continue;
    } else {
     conv = 3;
     dn[j-1] = ' ';
     break;
    }
   } else {
    dn[j] = c;
   }
   if (((dn[j] & 0x80) || *(cp - 1) != dn[j]) && conv != 3)
    conv = 2;
   if (dn[j] == 1) {
    conv = 3;
    dn[j] = '_';
   }
   if (dn[j] == 2) {
    conv = 3;
    dn[j--] = ' ';
   }
  }
  if (i > 0)
   conv = 3;
  dp--;
 } else {
  for (dp = cp; *--dp == ' ' || *dp == '.';);
  dp++;
 }




 for (i = dp - un, j = 0; un < dp && j < 8; j++) {
  c = unix2doschr(&un, &i, pmp);
  if (c & 0xff00) {
   dn[j] = c >> 8;
   if (++j < 8) {
    dn[j] = c;
    if (conv != 3)
     conv = 2;
    continue;
   } else {
    conv = 3;
    dn[j-1] = ' ';
    break;
   }
  } else {
   dn[j] = c;
  }
  if (((dn[j] & 0x80) || *(un - 1) != dn[j]) && conv != 3)
   conv = 2;
  if (dn[j] == 1) {
   conv = 3;
   dn[j] = '_';
  }
  if (dn[j] == 2) {
   conv = 3;
   dn[j--] = ' ';
  }
 }
 if (un < dp)
  conv = 3;




 if (!j)
  dn[0] = '_';





 if (conv != 3) {
  if (gen > 1)
   conv = 0;
  goto done;
 }




 if (gen == 0)
  goto done;
 for (wcp = gentext + sizeof(gentext); wcp > gentext && gen; gen /= 10)
  *--wcp = gen % 10 + '0';
 if (gen) {
  conv = 0;
  goto done;
 }
 for (i = 8; dn[--i] == ' ';);
 i++;
 if (gentext + sizeof(gentext) - wcp + 1 > 8 - i)
  i = 8 - (gentext + sizeof(gentext) - wcp + 1);



 cp = dn;
 i -= mbsadjpos((const char**)&cp, i, unlen, 1, pmp->pm_flags, pmp->pm_d2u);

 dn[i++] = '~';
 while (wcp < gentext + sizeof(gentext))
  dn[i++] = *wcp++;




 while (i < 8)
  dn[i++] = ' ';
 conv = 3;

done:




 if (dn[0] == 0xe5)
  dn[0] = SLOT_E5;

 return conv;
}

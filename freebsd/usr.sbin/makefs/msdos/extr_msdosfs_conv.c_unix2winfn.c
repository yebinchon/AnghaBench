
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef char u_char ;
struct winentry {int weCnt; int weChksum; int wePart3; int wePart2; int wePart1; scalar_t__ weReserved2; scalar_t__ weReserved1; int weAttributes; } ;


 int ATTR_WIN95 ;
 int WIN_CHARS ;
 int WIN_LAST ;
 int WIN_MAXLEN ;
 int char8ucs2str (char const*,size_t,int *,int) ;
 int memcpy (int ,int *,int) ;
 int memset (struct winentry*,int,int) ;
 int ucs2pad (int *,int,int) ;

int
unix2winfn(const u_char *un, size_t unlen, struct winentry *wep, int cnt,
    int chksum)
{
 uint16_t wn[WIN_MAXLEN], *p;
 int i, len;
 const u_char *cp;




 for (cp = un + unlen; unlen > 0; unlen--)
  if (*--cp != ' ' && *cp != '.')
   break;




 i = (cnt - 1) * WIN_CHARS;




 len = char8ucs2str(un, unlen, wn, WIN_MAXLEN);
 ucs2pad(wn, len, WIN_MAXLEN);




 memset(wep, 0xff, sizeof(*wep));
 wep->weCnt = cnt;
 wep->weAttributes = ATTR_WIN95;
 wep->weReserved1 = 0;
 wep->weChksum = chksum;
 wep->weReserved2 = 0;




 p = &wn[i];
 memcpy(wep->wePart1, p, sizeof(wep->wePart1));
 p += sizeof(wep->wePart1) / sizeof(*p);
 memcpy(wep->wePart2, p, sizeof(wep->wePart2));
 p += sizeof(wep->wePart2) / sizeof(*p);
 memcpy(wep->wePart3, p, sizeof(wep->wePart3));

 if (len > i + WIN_CHARS)
  return 1;

 wep->weCnt |= WIN_LAST;
 return 0;
}

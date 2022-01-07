
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
struct winentry {int weCnt; int weChksum; int wePart3; int wePart2; int wePart1; } ;


 int WIN_CHARS ;
 int WIN_CNT ;
 int WIN_LAST ;
 int WIN_MAXLEN ;
 int char8match (int *,int *,int) ;
 int char8ucs2str (int const*,size_t,int *,int) ;
 int memcpy (int *,int ,int) ;
 int ucs2pad (int *,int,int) ;

int
winChkName(const u_char *un, size_t unlen, struct winentry *wep, int chksum)
{
 uint16_t wn[WIN_MAXLEN], *p;
 uint16_t buf[WIN_CHARS];
 int i, len;




 if (wep->weCnt & WIN_LAST)
  chksum = wep->weChksum;
 else if (chksum != wep->weChksum)
  chksum = -1;
 if (chksum == -1)
  return -1;




 i = ((wep->weCnt & WIN_CNT) - 1) * WIN_CHARS;




 len = char8ucs2str(un, unlen, wn, WIN_MAXLEN);
 ucs2pad(wn, len, WIN_MAXLEN);

 if (i >= len + 1)
  return -1;
 if ((wep->weCnt & WIN_LAST) && (len - i > WIN_CHARS))
  return -1;




 p = &buf[0];
 memcpy(p, wep->wePart1, sizeof(wep->wePart1));
 p += sizeof(wep->wePart1) / sizeof(*p);
 memcpy(p, wep->wePart2, sizeof(wep->wePart2));
 p += sizeof(wep->wePart2) / sizeof(*p);
 memcpy(p, wep->wePart3, sizeof(wep->wePart3));




 if (!(char8match(&wn[i], buf, WIN_CHARS)))
  return -1;

 return chksum;
}

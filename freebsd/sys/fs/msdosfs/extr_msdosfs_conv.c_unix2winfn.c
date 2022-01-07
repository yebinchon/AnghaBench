
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_char ;
struct winentry {int weCnt; int weChksum; int * wePart3; int * wePart2; int * wePart1; scalar_t__ weReserved2; scalar_t__ weReserved1; int weAttributes; } ;
struct msdosfsmount {int pm_u2w; int pm_flags; } ;


 int ATTR_WIN95 ;
 int WIN_CHARS ;
 int WIN_LAST ;
 size_t mbsadjpos (char const**,size_t,int,int,int ,int ) ;
 int memset (struct winentry*,int,int) ;
 int unix2winchr (int const**,size_t*,int ,struct msdosfsmount*) ;
 size_t winLenFixup (int const*,size_t) ;

int
unix2winfn(const u_char *un, size_t unlen, struct winentry *wep, int cnt,
    int chksum, struct msdosfsmount *pmp)
{
 uint8_t *wcp;
 int i, end;
 uint16_t code;




 unlen = winLenFixup(un, unlen);




 unlen = mbsadjpos((const char **)&un, unlen, (cnt - 1) * WIN_CHARS, 2,
     pmp->pm_flags, pmp->pm_u2w);




 memset(wep, 0xff, sizeof(*wep));
 wep->weCnt = cnt;
 wep->weAttributes = ATTR_WIN95;
 wep->weReserved1 = 0;
 wep->weChksum = chksum;
 wep->weReserved2 = 0;




 end = 0;
 for (wcp = wep->wePart1, i = sizeof(wep->wePart1)/2; --i >= 0 && !end;) {
  code = unix2winchr(&un, &unlen, 0, pmp);
  *wcp++ = code;
  *wcp++ = code >> 8;
  if (!code)
   end = WIN_LAST;
 }
 for (wcp = wep->wePart2, i = sizeof(wep->wePart2)/2; --i >= 0 && !end;) {
  code = unix2winchr(&un, &unlen, 0, pmp);
  *wcp++ = code;
  *wcp++ = code >> 8;
  if (!code)
   end = WIN_LAST;
 }
 for (wcp = wep->wePart3, i = sizeof(wep->wePart3)/2; --i >= 0 && !end;) {
  code = unix2winchr(&un, &unlen, 0, pmp);
  *wcp++ = code;
  *wcp++ = code >> 8;
  if (!code)
   end = WIN_LAST;
 }
 if (!unlen)
  end = WIN_LAST;
 wep->weCnt |= end;
 return !end;
}

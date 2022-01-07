
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct msdosfsmount {int pm_flags; int pm_u2w; } ;
struct TYPE_2__ {int (* conv ) (int ,char const**,size_t*,char**,size_t*) ;} ;


 int MSDOSFSMNT_KICONV ;
 int WIN_CHARS ;
 int WIN_MAXLEN ;
 int howmany (size_t,int ) ;
 TYPE_1__* msdosfs_iconv ;
 int stub1 (int ,char const**,size_t*,char**,size_t*) ;
 size_t winLenFixup (int const*,size_t) ;

int
winSlotCnt(const u_char *un, size_t unlen, struct msdosfsmount *pmp)
{
 size_t wlen;
 char wn[WIN_MAXLEN * 2 + 1], *wnp;

 unlen = winLenFixup(un, unlen);

 if (pmp->pm_flags & MSDOSFSMNT_KICONV && msdosfs_iconv) {
  wlen = WIN_MAXLEN * 2;
  wnp = wn;
  msdosfs_iconv->conv(pmp->pm_u2w, (const char **)&un, &unlen, &wnp, &wlen);
  if (unlen > 0)
   return 0;
  return howmany(WIN_MAXLEN - wlen/2, WIN_CHARS);
 }

 if (unlen > WIN_MAXLEN)
  return 0;
 return howmany(unlen, WIN_CHARS);
}

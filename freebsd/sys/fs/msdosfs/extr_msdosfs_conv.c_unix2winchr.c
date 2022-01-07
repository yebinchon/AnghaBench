
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int u_char ;
struct msdosfsmount {int pm_flags; int pm_u2w; } ;
struct TYPE_2__ {int (* convchr ) (int ,char const**,size_t*,char**,size_t*) ;int (* convchr_case ) (int ,char const**,size_t*,char**,size_t*,int ) ;} ;


 int KICONV_FROM_LOWER ;
 int LCASE_BASE ;
 int LCASE_EXT ;
 int MSDOSFSMNT_KICONV ;
 TYPE_1__* msdosfs_iconv ;
 int stub1 (int ,char const**,size_t*,char**,size_t*,int ) ;
 int stub2 (int ,char const**,size_t*,char**,size_t*) ;
 size_t* u2l ;

__attribute__((used)) static uint16_t
unix2winchr(const u_char **instr, size_t *ilen, int lower, struct msdosfsmount *pmp)
{
 u_char *outp, outbuf[3];
 uint16_t wc;
 size_t olen;

 if (*ilen == 0)
  return (0);

 if (pmp->pm_flags & MSDOSFSMNT_KICONV && msdosfs_iconv) {
  outp = outbuf;
  olen = 2;
  if (lower & (LCASE_BASE | LCASE_EXT))
   msdosfs_iconv->convchr_case(pmp->pm_u2w, (const char **)instr,
        ilen, (char **)&outp, &olen,
        KICONV_FROM_LOWER);
  else
   msdosfs_iconv->convchr(pmp->pm_u2w, (const char **)instr,
          ilen, (char **)&outp, &olen);




  if (olen == 2)
   return (0);

  wc = (outbuf[0]<<8) | outbuf[1];

  return (wc);
 }

 (*ilen)--;
 wc = (*instr)[0];
 if (lower & (LCASE_BASE | LCASE_EXT))
  wc = u2l[wc];
 (*instr)++;
 return (wc);
}

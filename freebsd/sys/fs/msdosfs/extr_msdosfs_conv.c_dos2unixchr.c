
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_char ;
struct msdosfsmount {int pm_flags; int pm_d2u; } ;
struct TYPE_2__ {int (* convchr ) (int ,char const**,size_t*,char**,size_t*) ;int (* convchr_case ) (int ,char const**,size_t*,char**,size_t*,int ) ;} ;


 int KICONV_LOWER ;
 int LCASE_BASE ;
 int LCASE_EXT ;
 int MSDOSFSMNT_KICONV ;
 size_t* dos2unix ;
 TYPE_1__* msdosfs_iconv ;
 int stub1 (int ,char const**,size_t*,char**,size_t*,int ) ;
 int stub2 (int ,char const**,size_t*,char**,size_t*) ;
 size_t* u2l ;

__attribute__((used)) static u_char *
dos2unixchr(u_char *outbuf, const u_char **instr, size_t *ilen, int lower, struct msdosfsmount *pmp)
{
 u_char c, *outp;
 size_t len, olen;

 outp = outbuf;
 if (pmp->pm_flags & MSDOSFSMNT_KICONV && msdosfs_iconv) {
  olen = len = 4;

  if (lower & (LCASE_BASE | LCASE_EXT))
   msdosfs_iconv->convchr_case(pmp->pm_d2u, (const char **)instr,
        ilen, (char **)&outp, &olen, KICONV_LOWER);
  else
   msdosfs_iconv->convchr(pmp->pm_d2u, (const char **)instr,
          ilen, (char **)&outp, &olen);
  len -= olen;




  if (len == 0) {
   (*ilen)--;
   (*instr)++;
   *outp++ = '?';
  }
 } else {
  (*ilen)--;
  c = *(*instr)++;
  c = dos2unix[c];
  if (lower & (LCASE_BASE | LCASE_EXT))
   c = u2l[c];
  *outp++ = c;
  outbuf[1] = '\0';
 }

 *outp = '\0';
 outp = outbuf;
 return (outp);
}

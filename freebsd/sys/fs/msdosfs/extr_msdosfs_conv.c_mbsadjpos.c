
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* conv ) (void*,char const**,size_t*,char**,size_t*) ;} ;


 int MSDOSFSMNT_KICONV ;
 int min (size_t,size_t) ;
 TYPE_1__* msdosfs_iconv ;
 int stub1 (void*,char const**,size_t*,char**,size_t*) ;

__attribute__((used)) static int
mbsadjpos(const char **instr, size_t inlen, size_t outlen, int weight, int flag, void *handle)
{
 char *outp, outstr[outlen * weight + 1];

 if (flag & MSDOSFSMNT_KICONV && msdosfs_iconv) {
  outp = outstr;
  outlen *= weight;
  msdosfs_iconv->conv(handle, instr, &inlen, &outp, &outlen);
  return (inlen);
 }

 (*instr) += min(inlen, outlen);
 return (inlen - min(inlen, outlen));
}

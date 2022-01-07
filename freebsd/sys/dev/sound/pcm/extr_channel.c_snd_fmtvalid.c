
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AFMT_ENCODING (int) ;
 int AFMT_PASSTHROUGH ;

int
snd_fmtvalid(uint32_t fmt, uint32_t *fmtlist)
{
 int i;

 for (i = 0; fmtlist[i] != 0; i++) {
  if (fmt == fmtlist[i] ||
      ((fmt & AFMT_PASSTHROUGH) &&
      (AFMT_ENCODING(fmt) & fmtlist[i])))
   return (1);
 }

 return (0);
}

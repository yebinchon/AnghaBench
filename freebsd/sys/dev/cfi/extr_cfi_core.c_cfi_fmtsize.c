
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int sprintf (char*,char*,int,char const*) ;

__attribute__((used)) static char *
cfi_fmtsize(uint32_t sz)
{
 static char buf[8];
 static const char *sfx[] = { "", "K", "M", "G" };
 int sfxidx;

 sfxidx = 0;
 while (sfxidx < 3 && sz > 1023) {
  sz /= 1024;
  sfxidx++;
 }

 sprintf(buf, "%u%sB", sz, sfx[sfxidx]);
 return (buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_pri; } ;


 int CFE_STDHANDLE_CONSOLE ;
 int CN_DEAD ;
 int CN_LOW ;
 scalar_t__ bootverbose ;
 int cfe_cnputc (struct consdev*,char) ;
 scalar_t__ cfe_getstdhandle (int ) ;
 scalar_t__ conhandle ;
 int strlen (char*) ;

__attribute__((used)) static void
cfe_cnprobe(struct consdev *cp)
{

 conhandle = cfe_getstdhandle(CFE_STDHANDLE_CONSOLE);
 if (conhandle < 0) {
  cp->cn_pri = CN_DEAD;
  return;
 }


 if (bootverbose) {
  char *bootmsg = "Using CFE firmware console.\n";
  int i;

  for (i = 0; i < strlen(bootmsg); i++)
   cfe_cnputc(cp, bootmsg[i]);
 }

 cp->cn_pri = CN_LOW;
}

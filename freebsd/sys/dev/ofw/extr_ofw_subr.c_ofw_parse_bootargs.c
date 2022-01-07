
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int buf ;


 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int boot_parse_cmdline (char*) ;
 int boothowto ;

int
ofw_parse_bootargs(void)
{
 phandle_t chosen;
 char buf[2048];
 int err;

 chosen = OF_finddevice("/chosen");
 if (chosen == -1)
  return (chosen);

 if ((err = OF_getprop(chosen, "bootargs", buf, sizeof(buf))) != -1) {
  boothowto |= boot_parse_cmdline(buf);
  return (0);
 }

 return (err);
}

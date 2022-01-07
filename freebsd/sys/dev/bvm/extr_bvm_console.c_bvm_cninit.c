
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int RB_VERBOSE ;
 int boothowto ;
 int bvm_cnputc (struct consdev*,char const) ;
 int strlen (char const*) ;

__attribute__((used)) static void
bvm_cninit(struct consdev *cp)
{
 int i;
 const char *bootmsg = "Using bvm console.\n";

 if (boothowto & RB_VERBOSE) {
  for (i = 0; i < strlen(bootmsg); i++)
   bvm_cnputc(cp, bootmsg[i]);
 }
}

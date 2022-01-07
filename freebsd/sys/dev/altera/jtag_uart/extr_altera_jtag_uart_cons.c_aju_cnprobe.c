
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_pri; int cn_name; } ;


 char* AJU_TTYNAME ;
 int CN_NORMAL ;
 int CN_REMOTE ;
 int RB_SERIAL ;
 int boothowto ;
 int sprintf (int ,char*,char*,int ) ;

__attribute__((used)) static void
aju_cnprobe(struct consdev *cp)
{

 sprintf(cp->cn_name, "%s%d", AJU_TTYNAME, 0);
 cp->cn_pri = (boothowto & RB_SERIAL) ? CN_REMOTE : CN_NORMAL;
}

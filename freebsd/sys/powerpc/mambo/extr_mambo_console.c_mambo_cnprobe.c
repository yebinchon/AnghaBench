
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_pri; } ;


 int CN_DEAD ;
 int CN_NORMAL ;
 int OF_finddevice (char*) ;

__attribute__((used)) static void
mambo_cnprobe(struct consdev *cp)
{
 if (OF_finddevice("/mambo") == -1) {
  cp->cn_pri = CN_DEAD;
  return;
 }

 cp->cn_pri = CN_NORMAL;
}

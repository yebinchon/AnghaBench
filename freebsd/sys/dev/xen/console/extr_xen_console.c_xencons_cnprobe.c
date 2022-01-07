
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_name; int cn_pri; } ;


 int CN_REMOTE ;
 char* driver_name ;
 int sprintf (int ,char*,char*) ;
 int xen_domain () ;

__attribute__((used)) static void
xencons_cnprobe(struct consdev *cp)
{

 if (!xen_domain())
  return;

 cp->cn_pri = CN_REMOTE;
 sprintf(cp->cn_name, "%s0", driver_name);
}

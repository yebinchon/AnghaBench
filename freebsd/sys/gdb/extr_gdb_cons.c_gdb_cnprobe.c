
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_pri; int cn_name; } ;


 int CN_LOW ;
 int sprintf (int ,char*) ;

__attribute__((used)) static void
gdb_cnprobe(struct consdev *cp)
{
 sprintf(cp->cn_name, "gdb");
 cp->cn_pri = CN_LOW;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_name; } ;


 int strcpy (int ,char*) ;

__attribute__((used)) static void
uart_phyp_cninit(struct consdev *cp)
{

 strcpy(cp->cn_name, "phypcons");
}

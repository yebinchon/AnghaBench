
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct iobus_devinfo {int id_interrupt; int id_resources; } ;
typedef int phandle_t ;
typedef int intr ;


 int OF_getprop (int ,char*,int*,int) ;
 int SYS_RES_IRQ ;
 int resource_list_add (int *,int ,int ,int,int,int) ;

__attribute__((used)) static void
iobus_add_intr(phandle_t devnode, struct iobus_devinfo *dinfo)
{
 u_int intr = -1;

 if (OF_getprop(devnode, "interrupt", &intr, sizeof(intr)) != -1) {
  resource_list_add(&dinfo->id_resources,
      SYS_RES_IRQ, 0, intr, intr, 1);
 }
 dinfo->id_interrupt = intr;
}

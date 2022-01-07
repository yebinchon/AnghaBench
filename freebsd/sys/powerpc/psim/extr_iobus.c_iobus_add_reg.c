
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
struct iobus_devinfo {int id_nregs; scalar_t__* id_reg; int id_resources; } ;
typedef int phandle_t ;


 int OF_getprop (int ,char*,scalar_t__*,int) ;
 int SYS_RES_MEMORY ;
 int resource_list_add (int *,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
iobus_add_reg(phandle_t devnode, struct iobus_devinfo *dinfo,
       vm_offset_t iobus_off)
{
 u_int size;
 int i;

 size = OF_getprop(devnode, "reg", dinfo->id_reg,sizeof(dinfo->id_reg));

 if (size != -1) {
  dinfo->id_nregs = size / (sizeof(dinfo->id_reg[0]));

  for (i = 0; i < dinfo->id_nregs; i+= 3) {





   dinfo->id_reg[i+1] -= iobus_off;

   resource_list_add(&dinfo->id_resources,
       SYS_RES_MEMORY, 0,
       dinfo->id_reg[i+1],
       dinfo->id_reg[i+1] +
           dinfo->id_reg[i+2],
       dinfo->id_reg[i+2]);
  }
 }
}

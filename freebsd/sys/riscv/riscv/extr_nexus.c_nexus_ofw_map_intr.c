
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intr_map_data_fdt {int ncells; int cells; int iparent; } ;
struct intr_map_data {int dummy; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int INTR_MAP_DATA_FDT ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ intr_alloc_map_data (int ,size_t,int) ;
 int intr_map_irq (int *,int ,struct intr_map_data*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int
nexus_ofw_map_intr(device_t dev, device_t child, phandle_t iparent, int icells,
    pcell_t *intr)
{
 struct intr_map_data_fdt *fdt_data;
 size_t len;
 u_int irq;

 len = sizeof(*fdt_data) + icells * sizeof(pcell_t);
 fdt_data = (struct intr_map_data_fdt *)intr_alloc_map_data(
     INTR_MAP_DATA_FDT, len, M_WAITOK | M_ZERO);
 fdt_data->iparent = iparent;
 fdt_data->ncells = icells;
 memcpy(fdt_data->cells, intr, icells * sizeof(pcell_t));
 irq = intr_map_irq(((void*)0), iparent, (struct intr_map_data *)fdt_data);

 return (irq);
}

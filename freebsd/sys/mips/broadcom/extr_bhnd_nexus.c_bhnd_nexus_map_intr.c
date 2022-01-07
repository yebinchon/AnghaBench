
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bcm_mips_intr_map_data {int mdata; int ivec; } ;
typedef int rman_res_t ;
typedef int device_t ;


 uintptr_t BHND_BUS_GET_INTR_DOMAIN (int ,int ,int) ;
 int INTR_MAP_DATA_BCM_MIPS ;
 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int M_ZERO ;
 int bhnd_get_intr_ivec (int ,int ,int *) ;
 int device_printf (int ,char*,int ,int) ;
 scalar_t__ intr_alloc_map_data (int ,int,int) ;
 int intr_map_irq (int *,uintptr_t,int *) ;

__attribute__((used)) static int
bhnd_nexus_map_intr(device_t dev, device_t child, u_int intr, rman_res_t *irq)
{
 struct bcm_mips_intr_map_data *imd;
 u_int ivec;
 uintptr_t xref;
 int error;


 if ((error = bhnd_get_intr_ivec(child, intr, &ivec))) {
  device_printf(dev, "error fetching ivec for intr %u: %d\n",
      intr, error);
  return (error);
 }


 xref = BHND_BUS_GET_INTR_DOMAIN(dev, child, 0);
 KASSERT(xref != 0, ("missing interrupt domain"));


 imd = (struct bcm_mips_intr_map_data *)intr_alloc_map_data(
     INTR_MAP_DATA_BCM_MIPS, sizeof(*imd), M_WAITOK | M_ZERO);
 imd->ivec = ivec;


 *irq = intr_map_irq(((void*)0), xref, &imd->mdata);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ireg_field {int ireg_offset_range; scalar_t__ ireg_local_offset; } ;
struct cudbg_init {int (* print ) (char*) ;scalar_t__ verbose; } ;
struct adapter {int dummy; } ;


 int cim_ha_rreg (struct adapter*,scalar_t__,int*) ;
 int stub1 (char*) ;

__attribute__((used)) static int dump_up_cim(struct adapter *padap, struct cudbg_init *pdbg_init,
         struct ireg_field *up_cim_reg, u32 *buff)
{
 u32 i;
 int rc = 0;

 for (i = 0; i < up_cim_reg->ireg_offset_range; i++) {
  rc = cim_ha_rreg(padap,
     up_cim_reg->ireg_local_offset + (i * 4),
    buff);
  if (rc) {
   if (pdbg_init->verbose)
    pdbg_init->print("BUSY timeout reading"
      "CIM_HOST_ACC_CTRL\n");
   goto err;
  }

  buff++;
 }

err:
 return rc;
}

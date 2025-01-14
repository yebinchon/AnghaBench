
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_8__ {int dev; } ;
typedef TYPE_1__ ips_softc_t ;


 int COPPER_EBM_BIT ;
 int COPPER_EI_BIT ;
 int COPPER_GHI_BIT ;
 int COPPER_ILE_BIT ;
 int COPPER_OP_BIT ;
 int COPPER_REG_CBSP ;
 int COPPER_REG_CCCR ;
 int COPPER_REG_HISR ;
 int COPPER_REG_ISPR ;
 int COPPER_REG_SCPR ;
 int DELAY (int) ;
 int device_printf (int ,char*) ;
 scalar_t__ ips_clear_adapter (TYPE_1__*) ;
 int ips_copperhead_queue_init (TYPE_1__*) ;
 int ips_read_1 (TYPE_1__*,int ) ;
 int ips_write_1 (TYPE_1__*,int ,int) ;
 int ips_write_2 (TYPE_1__*,int ,int) ;

int ips_copperhead_reinit(ips_softc_t *sc, int force)
{
 int i, j;
 u_int32_t postcode = 0, configstatus = 0;
 ips_write_1(sc, COPPER_REG_SCPR, 0x80);
 ips_write_1(sc, COPPER_REG_SCPR, 0);
 device_printf(sc->dev, "reinitializing adapter, this could take several minutes.\n");
 for(j = 0; j < 2; j++){
  postcode <<= 8;
  for(i = 0; i < 45; i++){
   if(ips_read_1(sc, COPPER_REG_HISR) & COPPER_GHI_BIT){
    postcode |= ips_read_1(sc, COPPER_REG_ISPR);
    ips_write_1(sc, COPPER_REG_HISR,
         COPPER_GHI_BIT);
    break;
   } else
    DELAY(1000000);
  }
  if(i == 45)
   return 1;
 }
 for(j = 0; j < 2; j++){
  configstatus <<= 8;
  for(i = 0; i < 240; i++){
   if(ips_read_1(sc, COPPER_REG_HISR) & COPPER_GHI_BIT){
    configstatus |= ips_read_1(sc, COPPER_REG_ISPR);
    ips_write_1(sc, COPPER_REG_HISR,
         COPPER_GHI_BIT);
    break;
   } else
    DELAY(1000000);
  }
  if(i == 240)
   return 1;
 }
 for(i = 0; i < 240; i++){
  if(!(ips_read_1(sc, COPPER_REG_CBSP) & COPPER_OP_BIT)){
   break;
  } else
   DELAY(1000000);
 }
 if(i == 240)
  return 1;
 ips_write_2(sc, COPPER_REG_CCCR, 0x1000 | COPPER_ILE_BIT);
 ips_write_1(sc, COPPER_REG_SCPR, COPPER_EBM_BIT);
 ips_copperhead_queue_init(sc);
 ips_write_1(sc, COPPER_REG_HISR, COPPER_GHI_BIT);
 i = ips_read_1(sc, COPPER_REG_SCPR);
 ips_write_1(sc, COPPER_REG_HISR, COPPER_EI_BIT);
 if(!configstatus){
  device_printf(sc->dev, "adapter initialization failed\n");
  return 1;
 }
 if(force && ips_clear_adapter(sc)){
  device_printf(sc->dev, "adapter clear failed\n");
  return 1;
 }
 return 0;
}

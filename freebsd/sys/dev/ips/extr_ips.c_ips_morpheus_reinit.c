
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {int dev; } ;
typedef TYPE_1__ ips_softc_t ;


 int DELAY (int) ;
 int DEVICE_PRINTF (int,int ,char*,int) ;
 int IPS_POST1_OK ;
 int MORPHEUS_BIT_POST1 ;
 int MORPHEUS_BIT_POST2 ;
 int MORPHEUS_REG_IDR ;
 int MORPHEUS_REG_OIMR ;
 int MORPHEUS_REG_OISR ;
 int MORPHEUS_REG_OMR0 ;
 int MORPHEUS_REG_OMR1 ;
 int device_printf (int ,char*) ;
 scalar_t__ ips_clear_adapter (TYPE_1__*) ;
 int ips_read_4 (TYPE_1__*,int ) ;
 int ips_write_4 (TYPE_1__*,int ,int) ;

int ips_morpheus_reinit(ips_softc_t *sc, int force)
{
        u_int32_t tmp;
 int i;

 tmp = ips_read_4(sc, MORPHEUS_REG_OISR);
 if(!force && (ips_read_4(sc, MORPHEUS_REG_OMR0) >= IPS_POST1_OK) &&
     (ips_read_4(sc, MORPHEUS_REG_OMR1) != 0xdeadbeef) && !tmp){
  ips_write_4(sc, MORPHEUS_REG_OIMR, 0);
  return 0;
 }
 ips_write_4(sc, MORPHEUS_REG_OIMR, 0xff);
 ips_read_4(sc, MORPHEUS_REG_OIMR);

 device_printf(sc->dev, "resetting adapter, this may take up to 5 minutes\n");
 ips_write_4(sc, MORPHEUS_REG_IDR, 0x80000000);
 DELAY(5000000);
 ips_read_4(sc, MORPHEUS_REG_OIMR);

 tmp = ips_read_4(sc, MORPHEUS_REG_OISR);
 for(i = 0; i < 45 && !(tmp & MORPHEUS_BIT_POST1); i++){
  DELAY(1000000);
  DEVICE_PRINTF(2, sc->dev, "post1: %d\n", i);
  tmp = ips_read_4(sc, MORPHEUS_REG_OISR);
 }
 if(tmp & MORPHEUS_BIT_POST1)
  ips_write_4(sc, MORPHEUS_REG_OISR, MORPHEUS_BIT_POST1);

        if( i == 45 || ips_read_4(sc, MORPHEUS_REG_OMR0) < IPS_POST1_OK){
                device_printf(sc->dev,"Adapter error during initialization.\n");
  return 1;
        }
 for(i = 0; i < 240 && !(tmp & MORPHEUS_BIT_POST2); i++){
  DELAY(1000000);
  DEVICE_PRINTF(2, sc->dev, "post2: %d\n", i);
  tmp = ips_read_4(sc, MORPHEUS_REG_OISR);
 }
 if(tmp & MORPHEUS_BIT_POST2)
  ips_write_4(sc, MORPHEUS_REG_OISR, MORPHEUS_BIT_POST2);

 if(i == 240 || !ips_read_4(sc, MORPHEUS_REG_OMR1)){
  device_printf(sc->dev, "adapter failed config check\n");
  return 1;
        }
 ips_write_4(sc, MORPHEUS_REG_OIMR, 0);
 if(force && ips_clear_adapter(sc)){
  device_printf(sc->dev, "adapter clear failed\n");
  return 1;
 }
 return 0;
}

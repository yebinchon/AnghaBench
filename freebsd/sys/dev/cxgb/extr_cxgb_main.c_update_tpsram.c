
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int data; int datasize; } ;
struct adapter {int dev; } ;
typedef int name ;


 int EINVAL ;
 int FIRMWARE_UNLOAD ;
 char* TPSRAM_NAME ;
 int device_printf (int ,char*) ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;
 int snprintf (char*,int,char*,char) ;
 int t3_check_tpsram (struct adapter*,int ,int ) ;
 int t3_set_proto_sram (struct adapter*,int ) ;
 char t3rev2char (struct adapter*) ;
 int update_tpeeprom (struct adapter*) ;

__attribute__((used)) static int
update_tpsram(struct adapter *adap)
{
 const struct firmware *tpsram;
 int ret;
 char rev, name[32];

 rev = t3rev2char(adap);
 snprintf(name, sizeof(name), TPSRAM_NAME, rev);

 update_tpeeprom(adap);

 tpsram = firmware_get(name);
 if (tpsram == ((void*)0)){
  device_printf(adap->dev, "could not load TP SRAM\n");
  return (EINVAL);
 } else
  device_printf(adap->dev, "updating TP SRAM\n");

 ret = t3_check_tpsram(adap, tpsram->data, tpsram->datasize);
 if (ret)
  goto release_tpsram;

 ret = t3_set_proto_sram(adap, tpsram->data);
 if (ret)
  device_printf(adap->dev, "loading protocol SRAM failed\n");

release_tpsram:
 firmware_put(tpsram, FIRMWARE_UNLOAD);

 return ret;
}

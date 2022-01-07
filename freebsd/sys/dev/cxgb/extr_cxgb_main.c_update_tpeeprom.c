
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct firmware {int datasize; int data; } ;
struct adapter {int dev; int * port; } ;
typedef int name ;


 int FIRMWARE_UNLOAD ;
 unsigned int G_TP_VERSION_MAJOR (int ) ;
 unsigned int G_TP_VERSION_MINOR (int ) ;
 char* TPEEPROM_NAME ;
 int TP_SRAM_LEN ;
 int TP_SRAM_OFFSET ;
 unsigned int TP_VERSION_MAJOR ;
 int TP_VERSION_MICRO ;
 unsigned int TP_VERSION_MINOR ;
 int device_printf (int ,char*,...) ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;
 int set_eeprom (int *,int ,int,int ) ;
 int snprintf (char*,int,char*,char) ;
 int t3_check_tpsram (struct adapter*,int ,int) ;
 int t3_seeprom_read (struct adapter*,int ,int *) ;
 char t3rev2char (struct adapter*) ;

__attribute__((used)) static void
update_tpeeprom(struct adapter *adap)
{
 const struct firmware *tpeeprom;

 uint32_t version;
 unsigned int major, minor;
 int ret, len;
 char rev, name[32];

 t3_seeprom_read(adap, TP_SRAM_OFFSET, &version);

 major = G_TP_VERSION_MAJOR(version);
 minor = G_TP_VERSION_MINOR(version);
 if (major == TP_VERSION_MAJOR && minor == TP_VERSION_MINOR)
  return;

 rev = t3rev2char(adap);
 snprintf(name, sizeof(name), TPEEPROM_NAME, rev);

 tpeeprom = firmware_get(name);
 if (tpeeprom == ((void*)0)) {
  device_printf(adap->dev,
         "could not load TP EEPROM: unable to load %s\n",
         name);
  return;
 }

 len = tpeeprom->datasize - 4;

 ret = t3_check_tpsram(adap, tpeeprom->data, tpeeprom->datasize);
 if (ret)
  goto release_tpeeprom;

 if (len != TP_SRAM_LEN) {
  device_printf(adap->dev,
         "%s length is wrong len=%d expected=%d\n", name,
         len, TP_SRAM_LEN);
  return;
 }

 ret = set_eeprom(&adap->port[0], tpeeprom->data, tpeeprom->datasize,
     TP_SRAM_OFFSET);

 if (!ret) {
  device_printf(adap->dev,
   "Protocol SRAM image updated in EEPROM to %d.%d.%d\n",
    TP_VERSION_MAJOR, TP_VERSION_MINOR, TP_VERSION_MICRO);
 } else
  device_printf(adap->dev,
         "Protocol SRAM image update in EEPROM failed\n");

release_tpeeprom:
 firmware_put(tpeeprom, FIRMWARE_UNLOAD);

 return;
}

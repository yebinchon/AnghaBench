
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u32 ;
struct firmware {int datasize; scalar_t__ data; } ;
struct TYPE_5__ {int * fw_version; int dev; } ;
typedef TYPE_1__ adapter_t ;


 int ENOENT ;
 int FIRMWARE_UNLOAD ;
 int FW_FNAME ;
 int G_FW_VERSION_MAJOR (int ) ;
 int G_FW_VERSION_MICRO (int ) ;
 int G_FW_VERSION_MINOR (int ) ;
 int device_printf (int ,char*,...) ;
 struct firmware* firmware_get (int) ;
 int firmware_put (struct firmware const*,int ) ;
 int snprintf (int *,int,char*,int,int,int) ;
 int t3_get_fw_version (TYPE_1__*,int *) ;
 int t3_load_fw (TYPE_1__*,int const*,int ) ;

__attribute__((used)) static int
upgrade_fw(adapter_t *sc)
{
 const struct firmware *fw;
 int status;
 u32 vers;

 if ((fw = firmware_get(FW_FNAME)) == ((void*)0)) {
  device_printf(sc->dev, "Could not find firmware image %s\n", FW_FNAME);
  return (ENOENT);
 } else
  device_printf(sc->dev, "installing firmware on card\n");
 status = t3_load_fw(sc, (const uint8_t *)fw->data, fw->datasize);

 if (status != 0) {
  device_printf(sc->dev, "failed to install firmware: %d\n",
      status);
 } else {
  t3_get_fw_version(sc, &vers);
  snprintf(&sc->fw_version[0], sizeof(sc->fw_version), "%d.%d.%d",
      G_FW_VERSION_MAJOR(vers), G_FW_VERSION_MINOR(vers),
      G_FW_VERSION_MICRO(vers));
 }

 firmware_put(fw, FIRMWARE_UNLOAD);

 return (status);
}

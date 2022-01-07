
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_hal {int mh_dev; } ;
struct firmware {int datasize; int * data; } ;


 int EIO ;
 int FIRMWARE_UNLOAD ;
 int MALO_NOWAIT ;
 int MALO_WAITOK ;
 int device_printf (int ,char*,char*,...) ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;
 int malo_hal_send_helper (struct malo_hal*,int ,int *,int ,int ) ;

__attribute__((used)) static int
malo_hal_fwload_helper(struct malo_hal *mh, char *helper)
{
 const struct firmware *fw;
 int error;

 fw = firmware_get(helper);
 if (fw == ((void*)0)) {
  device_printf(mh->mh_dev, "could not read microcode %s!\n",
      helper);
  return (EIO);
 }

 device_printf(mh->mh_dev, "load %s firmware image (%zu bytes)\n",
     helper, fw->datasize);

 error = malo_hal_send_helper(mh, fw->datasize, fw->data, fw->datasize,
  MALO_WAITOK);
 if (error != 0)
  goto fail;


 error = malo_hal_send_helper(mh, 0, ((void*)0), 0, MALO_NOWAIT);

fail:
 firmware_put(fw, FIRMWARE_UNLOAD);

 return (error);
}

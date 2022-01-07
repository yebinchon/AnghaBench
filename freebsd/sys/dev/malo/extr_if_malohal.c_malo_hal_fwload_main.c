
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct malo_hal {int mh_dev; } ;
struct firmware {size_t datasize; scalar_t__ data; } ;


 int DELAY (int) ;
 int EIO ;
 int FIRMWARE_UNLOAD ;
 int MALO_NOWAIT ;
 scalar_t__ MIN (int,size_t) ;
 int device_printf (int ,char*,char*,...) ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;
 int malo_hal_send_main (struct malo_hal*,int const*,scalar_t__,int ,int ) ;

__attribute__((used)) static int
malo_hal_fwload_main(struct malo_hal *mh, char *firmware)
{
 const struct firmware *fw;
 const uint8_t *fp;
 int error;
 size_t count;
 uint16_t seqnum;
 uint32_t blocksize;

 error = 0;

 fw = firmware_get(firmware);
 if (fw == ((void*)0)) {
  device_printf(mh->mh_dev, "could not read firmware %s!\n",
      firmware);
  return (EIO);
 }

 device_printf(mh->mh_dev, "load %s firmware image (%zu bytes)\n",
     firmware, fw->datasize);

 seqnum = 1;
 for (count = 0; count < fw->datasize; count += blocksize) {
  blocksize = MIN(256, fw->datasize - count);
  fp = (const uint8_t *)fw->data + count;

  error = malo_hal_send_main(mh, fp, blocksize, seqnum++,
      MALO_NOWAIT);
  if (error != 0)
   goto fail;
  DELAY(500);
 }





 error = malo_hal_send_main(mh, ((void*)0), 0, seqnum++, MALO_NOWAIT);
 DELAY(100);

fail:
 firmware_put(fw, FIRMWARE_UNLOAD);

 return (error);
}

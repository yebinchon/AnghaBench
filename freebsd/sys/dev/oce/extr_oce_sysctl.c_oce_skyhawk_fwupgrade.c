
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct image_hdr {int imageid; } ;
struct flash_file_hdr {int num_imgs; int * build; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_5__ {int asic_revision; int dev; } ;
typedef TYPE_1__* POCE_SOFTC ;




 int device_printf (int ,char*,...) ;
 int oce_get_ufi_type (TYPE_1__*,struct flash_file_hdr const*) ;
 int oce_sh_be3_flashdata (TYPE_1__*,struct firmware const*,int) ;

__attribute__((used)) static int
oce_skyhawk_fwupgrade(POCE_SOFTC sc, const struct firmware *fw)
{
 int rc = 0, num_imgs = 0, i = 0, ufi_type;
 const struct flash_file_hdr *fhdr;
 const struct image_hdr *img_ptr;

 fhdr = (const struct flash_file_hdr *)fw->data;

 ufi_type = oce_get_ufi_type(sc, fhdr);


 device_printf(sc->dev, "Flashing Firmware %s\n", &fhdr->build[2]);

 num_imgs = fhdr->num_imgs;
 for (i = 0; i < num_imgs; i++) {
  img_ptr = (const struct image_hdr *)((const char *)fw->data +
    sizeof(struct flash_file_hdr) +
    (i * sizeof(struct image_hdr)));

  if (img_ptr->imageid != 1)
   continue;

  switch (ufi_type) {
   case 128:
    rc = oce_sh_be3_flashdata(sc, fw,
      num_imgs);
    break;
   case 129:
    if (sc->asic_revision < 0x10)
     rc = oce_sh_be3_flashdata(sc, fw,
           num_imgs);
    else {
     rc = -1;
     device_printf(sc->dev,
      "Cant load SH A0 UFI on B0\n");
    }
    break;
   default:
    rc = -1;
    break;

  }
 }

 return rc;
}

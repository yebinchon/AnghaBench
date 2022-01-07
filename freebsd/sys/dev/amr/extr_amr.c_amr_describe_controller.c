
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amr_softc {int amr_dev; } ;
struct TYPE_2__ {char* aa_firmware; char* aa_bios; int aa_memorysize; } ;
struct amr_prodinfo {char* ap_product; char* ap_firmware; char* ap_bios; scalar_t__ ae_signature; TYPE_1__ ae_adapter; int ap_memsize; } ;
struct amr_enquiry {char* ap_product; char* ap_firmware; char* ap_bios; scalar_t__ ae_signature; TYPE_1__ ae_adapter; int ap_memsize; } ;


 int AMR_CMD_CONFIG ;
 int AMR_CMD_ENQUIRY ;
 int AMR_CMD_EXT_ENQUIRY2 ;
 int AMR_CONFIG_PRODUCT_INFO ;
 scalar_t__ AMR_SIG_438 ;
 int M_AMR ;
 char* amr_describe_code (int ,scalar_t__) ;
 struct amr_prodinfo* amr_enquiry (struct amr_softc*,int,int ,int ,int ,int*) ;
 int amr_table_adaptertype ;
 int device_printf (int ,char*,...) ;
 int free (struct amr_prodinfo*,int ) ;
 int pci_get_device (int ) ;

__attribute__((used)) static void
amr_describe_controller(struct amr_softc *sc)
{
    struct amr_prodinfo *ap;
    struct amr_enquiry *ae;
    char *prod;
    int status;




    if ((ap = amr_enquiry(sc, 2048, AMR_CMD_CONFIG, AMR_CONFIG_PRODUCT_INFO, 0, &status)) != ((void*)0)) {
 device_printf(sc->amr_dev, "<LSILogic %.80s> Firmware %.16s, BIOS %.16s, %dMB RAM\n",
        ap->ap_product, ap->ap_firmware, ap->ap_bios,
        ap->ap_memsize);

 free(ap, M_AMR);
 return;
    }




    if ((ae = (struct amr_enquiry *)amr_enquiry(sc, 2048, AMR_CMD_EXT_ENQUIRY2, 0, 0, &status)) != ((void*)0)) {
 prod = amr_describe_code(amr_table_adaptertype, ae->ae_signature);

    } else if ((ae = (struct amr_enquiry *)amr_enquiry(sc, 2048, AMR_CMD_ENQUIRY, 0, 0, &status)) != ((void*)0)) {




 switch (pci_get_device(sc->amr_dev)) {
 case 0x9010:
     prod = "Series 428";
     break;
 case 0x9060:
     prod = "Series 434";
     break;
 default:
     prod = "unknown controller";
     break;
 }
    } else {
 device_printf(sc->amr_dev, "<unsupported controller>\n");
 return;
    }
    if(ae->ae_adapter.aa_firmware[2] >= 'A' &&
       ae->ae_adapter.aa_firmware[2] <= 'Z' &&
       ae->ae_adapter.aa_firmware[1] < ' ' &&
       ae->ae_adapter.aa_firmware[0] < ' ' &&
       ae->ae_adapter.aa_bios[2] >= 'A' &&
       ae->ae_adapter.aa_bios[2] <= 'Z' &&
       ae->ae_adapter.aa_bios[1] < ' ' &&
       ae->ae_adapter.aa_bios[0] < ' ') {



     if(ae->ae_signature == AMR_SIG_438) {

      prod = "HP NetRaid 3si";
     }

 device_printf(sc->amr_dev, "<%s> Firmware %c.%02d.%02d, BIOS %c.%02d.%02d, %dMB RAM\n",
        prod, ae->ae_adapter.aa_firmware[2],
        ae->ae_adapter.aa_firmware[1],
        ae->ae_adapter.aa_firmware[0],
        ae->ae_adapter.aa_bios[2],
        ae->ae_adapter.aa_bios[1],
        ae->ae_adapter.aa_bios[0],
        ae->ae_adapter.aa_memorysize);
    } else {
 device_printf(sc->amr_dev, "<%s> Firmware %.4s, BIOS %.4s, %dMB RAM\n",
        prod, ae->ae_adapter.aa_firmware, ae->ae_adapter.aa_bios,
        ae->ae_adapter.aa_memorysize);
    }
    free(ae, M_AMR);
}

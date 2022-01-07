
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int sc_dev; } ;
struct iwi_fw {int name; } ;
struct iwi_firmware_ohdr {int mode; } ;


 scalar_t__ IWI_FW_MODE_UCODE ;
 int device_printf (int ,char*,int ) ;
 struct iwi_firmware_ohdr* iwi_setup_ofw (struct iwi_softc*,struct iwi_fw*) ;
 scalar_t__ le32toh (int ) ;

__attribute__((used)) static const struct iwi_firmware_ohdr *
iwi_setup_oucode(struct iwi_softc *sc, struct iwi_fw *fw)
{
 const struct iwi_firmware_ohdr *hdr;

 hdr = iwi_setup_ofw(sc, fw);
 if (hdr != ((void*)0) && le32toh(hdr->mode) != IWI_FW_MODE_UCODE) {
  device_printf(sc->sc_dev, "%s is not a ucode image\n",
      fw->name);
  hdr = ((void*)0);
 }
 return hdr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int bge_dev; int bge_mfw_flags; } ;


 int APE_READ_4 (struct bge_softc*,int ) ;
 int BGE_APE_FW_FEATURES ;
 int BGE_APE_FW_FEATURE_DASH ;
 int BGE_APE_FW_FEATURE_NCSI ;
 int BGE_APE_FW_STATUS ;
 int BGE_APE_FW_STATUS_READY ;
 int BGE_APE_FW_VERSION ;
 int BGE_APE_FW_VERSION_BLDMSK ;
 int BGE_APE_FW_VERSION_MAJMSK ;
 int BGE_APE_FW_VERSION_MAJSFT ;
 int BGE_APE_FW_VERSION_MINMSK ;
 int BGE_APE_FW_VERSION_MINSFT ;
 int BGE_APE_FW_VERSION_REVMSK ;
 int BGE_APE_FW_VERSION_REVSFT ;
 int BGE_APE_SEG_SIG ;
 int BGE_APE_SEG_SIG_MAGIC ;
 int BGE_MFW_ON_APE ;
 int BGE_MFW_TYPE_DASH ;
 int BGE_MFW_TYPE_NCSI ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
bge_ape_read_fw_ver(struct bge_softc *sc)
{
 const char *fwtype;
 uint32_t apedata, features;


 apedata = APE_READ_4(sc, BGE_APE_SEG_SIG);
 if (apedata != BGE_APE_SEG_SIG_MAGIC) {
  sc->bge_mfw_flags &= ~ BGE_MFW_ON_APE;
  return;
 }


 apedata = APE_READ_4(sc, BGE_APE_FW_STATUS);
 if ((apedata & BGE_APE_FW_STATUS_READY) == 0) {
  device_printf(sc->bge_dev, "APE signature found "
      "but FW status not ready! 0x%08x\n", apedata);
  return;
 }

 sc->bge_mfw_flags |= BGE_MFW_ON_APE;


 apedata = APE_READ_4(sc, BGE_APE_FW_VERSION);
 features = APE_READ_4(sc, BGE_APE_FW_FEATURES);
 if ((features & BGE_APE_FW_FEATURE_NCSI) != 0) {
  sc->bge_mfw_flags |= BGE_MFW_TYPE_NCSI;
  fwtype = "NCSI";
 } else if ((features & BGE_APE_FW_FEATURE_DASH) != 0) {
  sc->bge_mfw_flags |= BGE_MFW_TYPE_DASH;
  fwtype = "DASH";
 } else
  fwtype = "UNKN";


 device_printf(sc->bge_dev, "APE FW version: %s v%d.%d.%d.%d\n",
     fwtype,
     (apedata & BGE_APE_FW_VERSION_MAJMSK) >> BGE_APE_FW_VERSION_MAJSFT,
     (apedata & BGE_APE_FW_VERSION_MINMSK) >> BGE_APE_FW_VERSION_MINSFT,
     (apedata & BGE_APE_FW_VERSION_REVMSK) >> BGE_APE_FW_VERSION_REVSFT,
     (apedata & BGE_APE_FW_VERSION_BLDMSK));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int sc_dev; } ;
struct iwi_fw {char const* data; int size; int name; struct firmware* fp; } ;
struct iwi_firmware_ohdr {int version; } ;
struct firmware {int datasize; int name; scalar_t__ data; } ;


 scalar_t__ IWI_FW_GET_MAJOR (int ) ;
 scalar_t__ IWI_FW_GET_MINOR (int ) ;
 scalar_t__ IWI_FW_REQ_MAJOR ;
 scalar_t__ IWI_FW_REQ_MINOR ;
 int device_printf (int ,char*,int ,...) ;
 int le32toh (int ) ;

__attribute__((used)) static const struct iwi_firmware_ohdr *
iwi_setup_ofw(struct iwi_softc *sc, struct iwi_fw *fw)
{
 const struct firmware *fp = fw->fp;
 const struct iwi_firmware_ohdr *hdr;

 if (fp->datasize < sizeof (struct iwi_firmware_ohdr)) {
  device_printf(sc->sc_dev, "image '%s' too small\n", fp->name);
  return ((void*)0);
 }
 hdr = (const struct iwi_firmware_ohdr *)fp->data;
 if ((IWI_FW_GET_MAJOR(le32toh(hdr->version)) != IWI_FW_REQ_MAJOR) ||
     (IWI_FW_GET_MINOR(le32toh(hdr->version)) != IWI_FW_REQ_MINOR)) {
  device_printf(sc->sc_dev, "version for '%s' %d.%d != %d.%d\n",
      fp->name, IWI_FW_GET_MAJOR(le32toh(hdr->version)),
      IWI_FW_GET_MINOR(le32toh(hdr->version)), IWI_FW_REQ_MAJOR,
      IWI_FW_REQ_MINOR);
  return ((void*)0);
 }
 fw->data = ((const char *) fp->data) + sizeof(struct iwi_firmware_ohdr);
 fw->size = fp->datasize - sizeof(struct iwi_firmware_ohdr);
 fw->name = fp->name;
 return hdr;
}

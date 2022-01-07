
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int which ;
typedef int uint32_t ;
struct uath_softc {int sc_dev; } ;


 int UATH_CMD_FLAG_MAGIC ;
 int WDCMSG_TARGET_GET_STATUS ;
 int be32toh (int ) ;
 int device_printf (int ,char*,int ) ;
 int htobe32 (int ) ;
 int uath_cmd_read (struct uath_softc*,int ,int *,int,void*,int,int ) ;

__attribute__((used)) static int
uath_get_status(struct uath_softc *sc, uint32_t which, void *odata, int olen)
{
 int error;

 which = htobe32(which);
 error = uath_cmd_read(sc, WDCMSG_TARGET_GET_STATUS,
     &which, sizeof(which), odata, olen, UATH_CMD_FLAG_MAGIC);
 if (error != 0)
  device_printf(sc->sc_dev,
      "could not read EEPROM offset 0x%02x\n", be32toh(which));
 return (error);
}

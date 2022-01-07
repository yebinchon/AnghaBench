
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uath_softc {int sc_dev; } ;


 int UATH_CMD_FLAG_MAGIC ;
 int WDCMSG_TARGET_GET_CAPABILITY ;
 int be32toh (int ) ;
 int device_printf (int ,char*,int ) ;
 int htobe32 (int ) ;
 int uath_cmd_read (struct uath_softc*,int ,int *,int,int *,int,int ) ;

__attribute__((used)) static int
uath_get_capability(struct uath_softc *sc, uint32_t cap, uint32_t *val)
{
 int error;

 cap = htobe32(cap);
 error = uath_cmd_read(sc, WDCMSG_TARGET_GET_CAPABILITY,
     &cap, sizeof cap, val, sizeof(uint32_t), UATH_CMD_FLAG_MAGIC);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not read capability %u\n",
      be32toh(cap));
  return (error);
 }
 *val = be32toh(*val);
 return (error);
}

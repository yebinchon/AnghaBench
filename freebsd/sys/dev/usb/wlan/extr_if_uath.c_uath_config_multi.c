
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uath_write_mac {int data; void* len; void* reg; } ;
struct uath_softc {int sc_dev; } ;


 int WDCMSG_TARGET_SET_CONFIG ;
 int bcopy (void const*,int ,int) ;
 int device_printf (int ,char*,int,int) ;
 void* htobe32 (int) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_write_mac*,int,int ) ;

__attribute__((used)) static int
uath_config_multi(struct uath_softc *sc, uint32_t reg, const void *data,
    int len)
{
 struct uath_write_mac write;
 int error;

 write.reg = htobe32(reg);
 write.len = htobe32(len);
 bcopy(data, write.data, len);


 error = uath_cmd_write(sc, WDCMSG_TARGET_SET_CONFIG, &write,
     (len == 0) ? sizeof (uint32_t) : 2 * sizeof (uint32_t) + len, 0);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not write %d bytes to register 0x%02x\n", len, reg);
 }
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct uath_write_mac {scalar_t__ data; void* len; void* reg; } ;
struct uath_softc {int sc_dev; } ;


 int WDCMSG_TARGET_SET_CONFIG ;
 int device_printf (int ,char*,void*) ;
 void* htobe32 (void*) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_write_mac*,int,int ) ;

__attribute__((used)) static int
uath_config(struct uath_softc *sc, uint32_t reg, uint32_t val)
{
 struct uath_write_mac write;
 int error;

 write.reg = htobe32(reg);
 write.len = htobe32(0);
 *(uint32_t *)write.data = htobe32(val);

 error = uath_cmd_write(sc, WDCMSG_TARGET_SET_CONFIG, &write,
     3 * sizeof (uint32_t), 0);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not write register 0x%02x\n",
      reg);
 }
 return (error);
}

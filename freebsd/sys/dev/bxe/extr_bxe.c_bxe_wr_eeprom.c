
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGW (struct bxe_softc*,char*) ;
 int EAGAIN ;
 int bxe_is_nvram_accessible (struct bxe_softc*) ;
 int bxe_nvram_write (struct bxe_softc*,int ,int *,int ) ;

__attribute__((used)) static int
bxe_wr_eeprom(struct bxe_softc *sc, void *data, uint32_t offset, uint32_t len)
{
    int rval = 0;

    if(!bxe_is_nvram_accessible(sc)) {
        BLOGW(sc, "Cannot access eeprom when interface is down\n");
        return (-EAGAIN);
    }
    rval = bxe_nvram_write(sc, offset, (uint8_t *)data, len);


   return (rval);
}

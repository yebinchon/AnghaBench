
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bxe_softc {int eeprom; } ;
struct TYPE_3__ {int eeprom_cmd; int eeprom_data_len; int eeprom_data; int eeprom_offset; } ;
typedef TYPE_1__ bxe_eeprom_t ;


 int BLOGW (struct bxe_softc*,char*,int,int) ;


 int EINVAL ;
 int bxe_rd_eeprom (struct bxe_softc*,int ,int ,int ) ;
 int bxe_wr_eeprom (struct bxe_softc*,int ,int ,int ) ;
 int copyin (int ,int ,int ) ;
 int copyout (int ,int ,int ) ;

__attribute__((used)) static int
bxe_eeprom_rd_wr(struct bxe_softc *sc, bxe_eeprom_t *eeprom)
{
    int rval = 0;

    switch (eeprom->eeprom_cmd) {

    case 128:

        rval = copyin(eeprom->eeprom_data, sc->eeprom,
                       eeprom->eeprom_data_len);

        if (rval)
            break;

        rval = bxe_wr_eeprom(sc, sc->eeprom, eeprom->eeprom_offset,
                       eeprom->eeprom_data_len);
        break;

    case 129:

        rval = bxe_rd_eeprom(sc, sc->eeprom, eeprom->eeprom_offset,
                       eeprom->eeprom_data_len);

        if (rval) {
            break;
        }

        rval = copyout(sc->eeprom, eeprom->eeprom_data,
                       eeprom->eeprom_data_len);
        break;

    default:
            rval = EINVAL;
            break;
    }

    if (rval) {
        BLOGW(sc, "ioctl cmd %d  failed rval %d\n", eeprom->eeprom_cmd, rval);
    }

    return (rval);
}

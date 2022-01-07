
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ flash_size; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;


 int BLOGE (struct bxe_softc*,char*,scalar_t__,int,scalar_t__) ;
 scalar_t__ BYTE_OFFSET (scalar_t__) ;
 scalar_t__ MCPR_NVM_COMMAND_FIRST ;
 scalar_t__ MCPR_NVM_COMMAND_LAST ;
 scalar_t__ be32toh (scalar_t__) ;
 int bxe_acquire_nvram_lock (struct bxe_softc*) ;
 int bxe_disable_nvram_access (struct bxe_softc*) ;
 int bxe_enable_nvram_access (struct bxe_softc*) ;
 int bxe_nvram_read_dword (struct bxe_softc*,scalar_t__,scalar_t__*,scalar_t__) ;
 int bxe_nvram_write_dword (struct bxe_softc*,scalar_t__,scalar_t__,scalar_t__) ;
 int bxe_release_nvram_lock (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_nvram_write1(struct bxe_softc *sc,
                 uint32_t offset,
                 uint8_t *data_buf,
                 int buf_size)
{
    uint32_t cmd_flags;
    uint32_t align_offset;
    uint32_t val;
    int rc;

    if ((offset + buf_size) > sc->devinfo.flash_size) {
        BLOGE(sc, "Invalid parameter, "
                  "offset 0x%x + buf_size 0x%x > flash_size 0x%x\n",
              offset, buf_size, sc->devinfo.flash_size);
        return (-1);
    }


    rc = bxe_acquire_nvram_lock(sc);
    if (rc) {
        return (rc);
    }


    bxe_enable_nvram_access(sc);

    cmd_flags = (MCPR_NVM_COMMAND_FIRST | MCPR_NVM_COMMAND_LAST);
    align_offset = (offset & ~0x03);
    rc = bxe_nvram_read_dword(sc, align_offset, &val, cmd_flags);

    if (rc == 0) {
        val &= ~(0xff << BYTE_OFFSET(offset));
        val |= (*data_buf << BYTE_OFFSET(offset));




        val = be32toh(val);

        rc = bxe_nvram_write_dword(sc, align_offset, val, cmd_flags);
    }


    bxe_disable_nvram_access(sc);
    bxe_release_nvram_lock(sc);

    return (rc);
}

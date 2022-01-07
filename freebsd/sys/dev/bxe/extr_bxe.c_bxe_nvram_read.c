
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int flash_size; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;


 int BLOGE (struct bxe_softc*,char*,int,int,...) ;
 int MCPR_NVM_COMMAND_FIRST ;
 int MCPR_NVM_COMMAND_LAST ;
 int bxe_acquire_nvram_lock (struct bxe_softc*) ;
 int bxe_disable_nvram_access (struct bxe_softc*) ;
 int bxe_enable_nvram_access (struct bxe_softc*) ;
 int bxe_nvram_read_dword (struct bxe_softc*,int,int*,int) ;
 int bxe_release_nvram_lock (struct bxe_softc*) ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static int
bxe_nvram_read(struct bxe_softc *sc,
               uint32_t offset,
               uint8_t *ret_buf,
               int buf_size)
{
    uint32_t cmd_flags;
    uint32_t val;
    int rc;

    if ((offset & 0x03) || (buf_size & 0x03) || (buf_size == 0)) {
        BLOGE(sc, "Invalid parameter, offset 0x%x buf_size 0x%x\n",
              offset, buf_size);
        return (-1);
    }

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


    cmd_flags = MCPR_NVM_COMMAND_FIRST;
    while ((buf_size > sizeof(uint32_t)) && (rc == 0)) {
        rc = bxe_nvram_read_dword(sc, offset, &val, cmd_flags);
        memcpy(ret_buf, &val, 4);


        offset += sizeof(uint32_t);
        ret_buf += sizeof(uint32_t);
        buf_size -= sizeof(uint32_t);
        cmd_flags = 0;
    }

    if (rc == 0) {
        cmd_flags |= MCPR_NVM_COMMAND_LAST;
        rc = bxe_nvram_read_dword(sc, offset, &val, cmd_flags);
        memcpy(ret_buf, &val, 4);
    }


    bxe_disable_nvram_access(sc);
    bxe_release_nvram_lock(sc);

    return (rc);
}

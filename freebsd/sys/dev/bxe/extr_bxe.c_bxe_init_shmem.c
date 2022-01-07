
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ shmem_base; } ;
struct TYPE_3__ {scalar_t__ shmem_base; } ;
struct bxe_softc {TYPE_2__ devinfo; TYPE_1__ link_params; } ;


 int BLOGE (struct bxe_softc*,char*) ;
 int MCP_ONE_TIMEOUT ;
 int MCP_TIMEOUT ;
 int MISC_REG_SHARED_MEM_ADDR ;
 scalar_t__ REG_RD (struct bxe_softc*,int ) ;
 size_t SC_PORT (struct bxe_softc*) ;
 int SHMEM_RD (struct bxe_softc*,int ) ;
 int SHR_MEM_VALIDITY_MB ;
 int bxe_mcp_wait_one (struct bxe_softc*) ;
 int * validity_map ;

__attribute__((used)) static int
bxe_init_shmem(struct bxe_softc *sc)
{
    int cnt = 0;
    uint32_t val = 0;

    do {
        sc->devinfo.shmem_base =
        sc->link_params.shmem_base =
            REG_RD(sc, MISC_REG_SHARED_MEM_ADDR);

        if (sc->devinfo.shmem_base) {
            val = SHMEM_RD(sc, validity_map[SC_PORT(sc)]);
            if (val & SHR_MEM_VALIDITY_MB)
                return (0);
        }

        bxe_mcp_wait_one(sc);

    } while (cnt++ < (MCP_TIMEOUT / MCP_ONE_TIMEOUT));

    BLOGE(sc, "BAD MCP validity signature\n");

    return (-1);
}

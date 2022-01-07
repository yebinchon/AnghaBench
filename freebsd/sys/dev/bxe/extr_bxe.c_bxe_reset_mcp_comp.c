
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int CHIP_IS_E1 (struct bxe_softc*) ;
 int bxe_clp_reset_done (struct bxe_softc*,int ) ;
 int bxe_init_shmem (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_reset_mcp_comp(struct bxe_softc *sc,
                   uint32_t magic_val)
{
    int rc = bxe_init_shmem(sc);


    if (!CHIP_IS_E1(sc)) {
        bxe_clp_reset_done(sc, magic_val);
    }

    return (rc);
}

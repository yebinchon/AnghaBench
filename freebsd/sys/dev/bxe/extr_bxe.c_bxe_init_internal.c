
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;




 int bxe_init_internal_common (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_init_internal(struct bxe_softc *sc,
                  uint32_t load_code)
{
    switch (load_code) {
    case 131:
    case 130:
        bxe_init_internal_common(sc);


    case 128:



    case 129:

        break;

    default:
        BLOGE(sc, "Unknown load_code (0x%x) from MCP\n", load_code);
        break;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int* speed_cap_mask; TYPE_1__* phy; } ;
struct bxe_softc {int media; TYPE_2__ link_params; } ;
struct TYPE_3__ {int media_type; } ;


 int BLOGI (struct bxe_softc*,char*) ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_10G_CX4 ;
 int IFM_10G_SR ;
 int IFM_10G_T ;
 int IFM_10G_TWINAX ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_OTHER ;
 int PORT_TP ;
 size_t bxe_get_cur_phy_idx (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_media_detect(struct bxe_softc *sc)
{
    int port_type;
    uint32_t phy_idx = bxe_get_cur_phy_idx(sc);

    switch (sc->link_params.phy[phy_idx].media_type) {
    case 131:
    case 128:
        BLOGI(sc, "Found 10Gb Fiber media.\n");
        sc->media = IFM_10G_SR;
        port_type = PORT_FIBRE;
        break;
    case 130:
        BLOGI(sc, "Found 1Gb Fiber media.\n");
        sc->media = IFM_1000_SX;
        port_type = PORT_FIBRE;
        break;
    case 133:
    case 135:
        BLOGI(sc, "Found 10GBase-CX4 media.\n");
        sc->media = IFM_10G_CX4;
        port_type = PORT_FIBRE;
        break;
    case 134:
        BLOGI(sc, "Found 10Gb Twinax media.\n");
        sc->media = IFM_10G_TWINAX;
        port_type = PORT_DA;
        break;
    case 136:
        if (sc->link_params.speed_cap_mask[0] &
            PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) {
            BLOGI(sc, "Found 10GBase-T media.\n");
            sc->media = IFM_10G_T;
            port_type = PORT_TP;
        } else {
            BLOGI(sc, "Found 1000Base-T media.\n");
            sc->media = IFM_1000_T;
            port_type = PORT_TP;
        }
        break;
    case 132:
        BLOGI(sc, "Media not present.\n");
        sc->media = 0;
        port_type = PORT_OTHER;
        break;
    case 129:
    default:
        BLOGI(sc, "Unknown media!\n");
        sc->media = 0;
        port_type = PORT_OTHER;
        break;
    }
    return port_type;
}

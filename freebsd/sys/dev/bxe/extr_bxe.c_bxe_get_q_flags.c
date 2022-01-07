
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bxe_softc {int ifp; } ;
struct bxe_fastpath {int dummy; } ;


 int ECORE_Q_FLG_LEADING_RSS ;
 int ECORE_Q_FLG_MCAST ;
 int ECORE_Q_FLG_OV ;
 int ECORE_Q_FLG_TPA ;
 int ECORE_Q_FLG_TPA_IPV6 ;
 int ECORE_Q_FLG_VLAN ;
 int IFCAP_LRO ;
 scalar_t__ IS_MF_SD (struct bxe_softc*) ;
 int TRUE ;
 unsigned long bxe_get_common_flags (struct bxe_softc*,struct bxe_fastpath*,int ) ;
 int bxe_set_bit (int ,unsigned long*) ;
 int if_getcapenable (int ) ;

__attribute__((used)) static unsigned long
bxe_get_q_flags(struct bxe_softc *sc,
                struct bxe_fastpath *fp,
                uint8_t leading)
{
    unsigned long flags = 0;

    if (IS_MF_SD(sc)) {
        bxe_set_bit(ECORE_Q_FLG_OV, &flags);
    }

    if (if_getcapenable(sc->ifp) & IFCAP_LRO) {
        bxe_set_bit(ECORE_Q_FLG_TPA, &flags);



    }

    if (leading) {
        bxe_set_bit(ECORE_Q_FLG_LEADING_RSS, &flags);
        bxe_set_bit(ECORE_Q_FLG_MCAST, &flags);
    }

    bxe_set_bit(ECORE_Q_FLG_VLAN, &flags);


    return (flags | bxe_get_common_flags(sc, fp, TRUE));
}

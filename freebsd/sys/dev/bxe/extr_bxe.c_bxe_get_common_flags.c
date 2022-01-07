
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bxe_softc {int flags; } ;
struct bxe_fastpath {int dummy; } ;


 int BXE_TX_SWITCHING ;
 int ECORE_Q_FLG_ACTIVE ;
 int ECORE_Q_FLG_PCSUM_ON_PKT ;
 int ECORE_Q_FLG_STATS ;
 int ECORE_Q_FLG_TX_SWITCH ;
 int ECORE_Q_FLG_ZERO_STATS ;
 int bxe_set_bit (int ,unsigned long*) ;

__attribute__((used)) static unsigned long
bxe_get_common_flags(struct bxe_softc *sc,
                     struct bxe_fastpath *fp,
                     uint8_t zero_stats)
{
    unsigned long flags = 0;


    bxe_set_bit(ECORE_Q_FLG_ACTIVE, &flags);







    bxe_set_bit(ECORE_Q_FLG_STATS, &flags);
    if (zero_stats) {
        bxe_set_bit(ECORE_Q_FLG_ZERO_STATS, &flags);
    }





    if (sc->flags & BXE_TX_SWITCHING) {
        bxe_set_bit(ECORE_Q_FLG_TX_SWITCH, &flags);
    }

    bxe_set_bit(ECORE_Q_FLG_PCSUM_ON_PKT, &flags);

    return (flags);
}

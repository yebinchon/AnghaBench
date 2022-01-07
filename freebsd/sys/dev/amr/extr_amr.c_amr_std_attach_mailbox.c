
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_mailboxphys; } ;


 int AMR_SACK_INTERRUPT (struct amr_softc*) ;
 int AMR_SBYTE_SET (struct amr_softc*,int ,int) ;
 int AMR_SENABLE_INTR (struct amr_softc*) ;
 int AMR_SMBOX_0 ;
 int AMR_SMBOX_1 ;
 int AMR_SMBOX_2 ;
 int AMR_SMBOX_3 ;
 int AMR_SMBOX_ADDR ;
 int AMR_SMBOX_ENABLE ;

__attribute__((used)) static void
amr_std_attach_mailbox(struct amr_softc *sc)
{


    AMR_SBYTE_SET(sc, AMR_SMBOX_0, sc->amr_mailboxphys & 0xff);
    AMR_SBYTE_SET(sc, AMR_SMBOX_1, (sc->amr_mailboxphys >> 8) & 0xff);
    AMR_SBYTE_SET(sc, AMR_SMBOX_2, (sc->amr_mailboxphys >> 16) & 0xff);
    AMR_SBYTE_SET(sc, AMR_SMBOX_3, (sc->amr_mailboxphys >> 24) & 0xff);
    AMR_SBYTE_SET(sc, AMR_SMBOX_ENABLE, AMR_SMBOX_ADDR);


    AMR_SACK_INTERRUPT(sc);
    AMR_SENABLE_INTR(sc);
}

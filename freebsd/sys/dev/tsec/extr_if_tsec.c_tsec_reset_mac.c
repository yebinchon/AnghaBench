
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {int dummy; } ;


 int TSEC_MACCFG1_SOFT_RESET ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_MACCFG1 ;
 int TSEC_WRITE (struct tsec_softc*,int ,int ) ;

__attribute__((used)) static void
tsec_reset_mac(struct tsec_softc *sc)
{
 uint32_t maccfg1_flags;


 maccfg1_flags = TSEC_READ(sc, TSEC_REG_MACCFG1);
 maccfg1_flags |= TSEC_MACCFG1_SOFT_RESET;
 TSEC_WRITE(sc, TSEC_REG_MACCFG1, maccfg1_flags);


 maccfg1_flags = TSEC_READ(sc, TSEC_REG_MACCFG1);
 maccfg1_flags &= ~TSEC_MACCFG1_SOFT_RESET;
 TSEC_WRITE(sc, TSEC_REG_MACCFG1, maccfg1_flags);
}

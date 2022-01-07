
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_flags; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_RXQ_CFG ;
 int ALC_TXQ_CFG ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int RXQ_CFG_ENB ;
 int RXQ_CFG_QUEUE0_ENB ;
 int RXQ_CFG_QUEUE1_ENB ;
 int RXQ_CFG_QUEUE2_ENB ;
 int TXQ_CFG_ENB ;

__attribute__((used)) static void
alc_start_queue(struct alc_softc *sc)
{
 uint32_t qcfg[] = {
  0,
  RXQ_CFG_QUEUE0_ENB,
  RXQ_CFG_QUEUE0_ENB | RXQ_CFG_QUEUE1_ENB,
  RXQ_CFG_QUEUE0_ENB | RXQ_CFG_QUEUE1_ENB | RXQ_CFG_QUEUE2_ENB,
  RXQ_CFG_ENB
 };
 uint32_t cfg;

 ALC_LOCK_ASSERT(sc);


 cfg = CSR_READ_4(sc, ALC_RXQ_CFG);
 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) == 0) {
  cfg &= ~RXQ_CFG_ENB;
  cfg |= qcfg[1];
 } else
  cfg |= RXQ_CFG_QUEUE0_ENB;
 CSR_WRITE_4(sc, ALC_RXQ_CFG, cfg);

 cfg = CSR_READ_4(sc, ALC_TXQ_CFG);
 cfg |= TXQ_CFG_ENB;
 CSR_WRITE_4(sc, ALC_TXQ_CFG, cfg);
}

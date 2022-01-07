
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creator_softc {int dummy; } ;


 int FBC_UCSR_FB_BUSY ;
 int FBC_UCSR_FIFO_OVFL ;
 int FBC_UCSR_READ_ERR ;
 int FBC_UCSR_RP_BUSY ;
 int FFB_FBC ;
 int FFB_FBC_UCSR ;
 int FFB_READ (struct creator_softc*,int ,int ) ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int) ;

__attribute__((used)) static inline void
creator_ras_wait(struct creator_softc *sc)
{
 int ucsr;
 int r;

 for (;;) {
  ucsr = FFB_READ(sc, FFB_FBC, FFB_FBC_UCSR);
  if ((ucsr & (FBC_UCSR_FB_BUSY | FBC_UCSR_RP_BUSY)) == 0)
   break;
  r = ucsr & (FBC_UCSR_READ_ERR | FBC_UCSR_FIFO_OVFL);
  if (r != 0)
   FFB_WRITE(sc, FFB_FBC, FFB_FBC_UCSR, r);
 }
}

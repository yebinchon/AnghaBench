
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_int ;
struct sec_softc {scalar_t__ sc_channel_idle_mask; int sc_version; } ;
struct sec_desc {int sd_desc_paddr; } ;


 int SEC_CHANNELS ;
 int SEC_CHAN_CSR (int) ;
 scalar_t__ SEC_CHAN_CSR2_FFLVL_M ;
 scalar_t__ SEC_CHAN_CSR2_FFLVL_S ;
 scalar_t__ SEC_CHAN_CSR3_FFLVL_M ;
 scalar_t__ SEC_CHAN_CSR3_FFLVL_S ;
 int SEC_CHAN_FF (int) ;
 int SEC_LOCK_ASSERT (struct sec_softc*,int ) ;
 scalar_t__ SEC_MAX_FIFO_LEVEL ;
 scalar_t__ SEC_READ (struct sec_softc*,int ) ;
 int SEC_WRITE (struct sec_softc*,int ,int ) ;
 int controller ;

__attribute__((used)) static int
sec_enqueue_desc(struct sec_softc *sc, struct sec_desc *desc, int channel)
{
 u_int fflvl = SEC_MAX_FIFO_LEVEL;
 uint64_t reg;
 int i;

 SEC_LOCK_ASSERT(sc, controller);


 if (channel < 0) {
  for (i = 0; i < SEC_CHANNELS; i++) {
   reg = SEC_READ(sc, SEC_CHAN_CSR(channel));

   if ((reg & sc->sc_channel_idle_mask) == 0) {
    channel = i;
    break;
   }
  }
 }


 if (channel < 0)
  return (-1);


 reg = SEC_READ(sc, SEC_CHAN_CSR(channel));

 switch(sc->sc_version) {
 case 2:
  fflvl = (reg >> SEC_CHAN_CSR2_FFLVL_S) & SEC_CHAN_CSR2_FFLVL_M;
  break;
 case 3:
  fflvl = (reg >> SEC_CHAN_CSR3_FFLVL_S) & SEC_CHAN_CSR3_FFLVL_M;
  break;
 }

 if (fflvl >= SEC_MAX_FIFO_LEVEL)
  return (-1);


 SEC_WRITE(sc, SEC_CHAN_FF(channel), desc->sd_desc_paddr);

 return (channel);
}

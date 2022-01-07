
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sec_softc {int dummy; } ;


 int SEC_CHANNELS ;
 int SEC_IER ;
 int SEC_INT_CH_DN (int) ;
 int SEC_INT_CH_ERR (int) ;
 int SEC_INT_ITO ;
 int SEC_WRITE (struct sec_softc*,int ,int) ;
 int sec_channel_reset (struct sec_softc*,int,int) ;
 int sec_controller_reset (struct sec_softc*) ;

__attribute__((used)) static int
sec_init(struct sec_softc *sc)
{
 uint64_t reg;
 int error, i;


 error = sec_controller_reset(sc);
 if (error)
  return (error);

 error = sec_controller_reset(sc);
 if (error)
  return (error);


 for (i = 0; i < SEC_CHANNELS; i++) {
  error = sec_channel_reset(sc, i, 1);
  if (error)
   return (error);
 }


 reg = SEC_INT_ITO;
 for (i = 0; i < SEC_CHANNELS; i++)
  reg |= SEC_INT_CH_DN(i) | SEC_INT_CH_ERR(i);

 SEC_WRITE(sc, SEC_IER, reg);

 return (error);
}

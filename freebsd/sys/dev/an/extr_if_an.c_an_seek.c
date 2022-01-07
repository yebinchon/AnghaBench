
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int an_ifp; } ;




 int AN_OFF0 ;
 int AN_OFF1 ;
 int AN_OFF_BUSY ;
 int AN_OFF_ERR ;
 int AN_SEL0 ;
 int AN_SEL1 ;
 int AN_TIMEOUT ;
 int CSR_READ_2 (struct an_softc*,int) ;
 int CSR_WRITE_2 (struct an_softc*,int,int) ;
 int EIO ;
 int ETIMEDOUT ;
 int if_printf (int ,char*,int) ;

__attribute__((used)) static int
an_seek(struct an_softc *sc, int id, int off, int chan)
{
 int i;
 int selreg, offreg;

 switch (chan) {
 case 129:
  selreg = AN_SEL0;
  offreg = AN_OFF0;
  break;
 case 128:
  selreg = AN_SEL1;
  offreg = AN_OFF1;
  break;
 default:
  if_printf(sc->an_ifp, "invalid data path: %x\n", chan);
  return(EIO);
 }

 CSR_WRITE_2(sc, selreg, id);
 CSR_WRITE_2(sc, offreg, off);

 for (i = 0; i < AN_TIMEOUT; i++) {
  if (!(CSR_READ_2(sc, offreg) & (AN_OFF_BUSY|AN_OFF_ERR)))
   break;
 }

 if (i == AN_TIMEOUT)
  return(ETIMEDOUT);

 return(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int mpi350; int an_ifp; } ;


 int AN_ALLOC_FID ;
 int AN_BAP0 ;
 int AN_CMD_ALLOC_MEM ;
 int AN_DATA0 ;
 int AN_EVENT_ACK (int ) ;
 int AN_EVENT_STAT (int ) ;
 int AN_EV_ALLOC ;
 int AN_TIMEOUT ;
 int CSR_READ_2 (struct an_softc*,int ) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int) ;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 scalar_t__ an_cmd (struct an_softc*,int ,int) ;
 scalar_t__ an_seek (struct an_softc*,int,int ,int ) ;
 int if_printf (int ,char*,int) ;

__attribute__((used)) static int
an_alloc_nicmem(struct an_softc *sc, int len, int *id)
{
 int i;

 if (an_cmd(sc, AN_CMD_ALLOC_MEM, len)) {
  if_printf(sc->an_ifp, "failed to allocate %d bytes on NIC\n",
      len);
  return(ENOMEM);
 }

 for (i = 0; i < AN_TIMEOUT; i++) {
  if (CSR_READ_2(sc, AN_EVENT_STAT(sc->mpi350)) & AN_EV_ALLOC)
   break;
 }

 if (i == AN_TIMEOUT)
  return(ETIMEDOUT);

 CSR_WRITE_2(sc, AN_EVENT_ACK(sc->mpi350), AN_EV_ALLOC);
 *id = CSR_READ_2(sc, AN_ALLOC_FID);

 if (an_seek(sc, *id, 0, AN_BAP0))
  return(EIO);

 for (i = 0; i < len / 2; i++)
  CSR_WRITE_2(sc, AN_DATA0, 0);

 return(0);
}

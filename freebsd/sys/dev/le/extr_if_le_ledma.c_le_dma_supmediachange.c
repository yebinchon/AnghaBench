
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct lance_softc {struct ifmedia sc_media; } ;


 int EINVAL ;



 scalar_t__ IFM_ETHER ;
 int IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 int le_dma_setaui (struct lance_softc*) ;
 int le_dma_setutp (struct lance_softc*) ;

__attribute__((used)) static int
le_dma_supmediachange(struct lance_softc *sc)
{
 struct ifmedia *ifm = &sc->sc_media;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);






 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 129:
  le_dma_setutp(sc);
  break;

 case 130:
  le_dma_setaui(sc);
  break;

 case 128:
  break;

 default:
  return (EINVAL);
 }

 return (0);
}

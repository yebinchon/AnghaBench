
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct enc_softc* if_softc; int if_output; int if_ioctl; int if_mtu; } ;
struct if_clone {int dummy; } ;
struct enchdr {int dummy; } ;
struct enc_softc {struct ifnet* sc_ifp; } ;
typedef int caddr_t ;


 int DLT_ENC ;
 int EEXIST ;
 int ENCMTU ;
 int ENOSPC ;
 int IFT_ENC ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct enc_softc* V_enc_sc ;
 int bpfattach (struct ifnet*,int ,int) ;
 int enc_ioctl ;
 int enc_output ;
 int encname ;
 int free (struct enc_softc*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int) ;
 struct enc_softc* malloc (int,int ,int) ;

__attribute__((used)) static int
enc_clone_create(struct if_clone *ifc, int unit, caddr_t params)
{
 struct ifnet *ifp;
 struct enc_softc *sc;

 sc = malloc(sizeof(struct enc_softc), M_DEVBUF,
     M_WAITOK | M_ZERO);
 ifp = sc->sc_ifp = if_alloc(IFT_ENC);
 if (ifp == ((void*)0)) {
  free(sc, M_DEVBUF);
  return (ENOSPC);
 }
 if (V_enc_sc != ((void*)0)) {
  if_free(ifp);
  free(sc, M_DEVBUF);
  return (EEXIST);
 }
 V_enc_sc = sc;
 if_initname(ifp, encname, unit);
 ifp->if_mtu = ENCMTU;
 ifp->if_ioctl = enc_ioctl;
 ifp->if_output = enc_output;
 ifp->if_softc = sc;
 if_attach(ifp);
 bpfattach(ifp, DLT_ENC, sizeof(struct enchdr));
 return (0);
}

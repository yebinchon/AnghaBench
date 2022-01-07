
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xicp_softc {scalar_t__ nintvecs; int sc_mtx; int * intvecs; } ;
typedef void xicp_intvec ;


 int KASSERT (int,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ nitems (int *) ;

__attribute__((used)) static __inline struct xicp_intvec *
xicp_setup_priv(struct xicp_softc *sc, u_int irq, void **priv)
{
 if (*priv == ((void*)0)) {
  KASSERT(sc->nintvecs + 1 < nitems(sc->intvecs),
   ("Too many XICP interrupts"));
  mtx_lock(&sc->sc_mtx);
  *priv = &sc->intvecs[sc->nintvecs++];
  mtx_unlock(&sc->sc_mtx);
 }

 return (*priv);
}

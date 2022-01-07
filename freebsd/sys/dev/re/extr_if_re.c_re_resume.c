
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_flags; scalar_t__ suspended; struct ifnet* rl_ifp; } ;
struct ifnet {int if_flags; } ;
typedef int device_t ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int IFF_UP ;
 int RL_FLAG_MACSLEEP ;
 int RL_GPIO ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_MACDBG ;
 int RL_UNLOCK (struct rl_softc*) ;
 struct rl_softc* device_get_softc (int ) ;
 int re_clrwol (struct rl_softc*) ;
 int re_init_locked (struct rl_softc*) ;

__attribute__((used)) static int
re_resume(device_t dev)
{
 struct rl_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 RL_LOCK(sc);

 ifp = sc->rl_ifp;

 if ((sc->rl_flags & RL_FLAG_MACSLEEP) != 0) {
  if ((CSR_READ_1(sc, RL_MACDBG) & 0x80) == 0x80)
   CSR_WRITE_1(sc, RL_GPIO,
       CSR_READ_1(sc, RL_GPIO) | 0x01);
 }





 re_clrwol(sc);


 if (ifp->if_flags & IFF_UP)
  re_init_locked(sc);

 sc->suspended = 0;
 RL_UNLOCK(sc);

 return (0);
}

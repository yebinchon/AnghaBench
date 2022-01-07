
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {int ifp; int * tx_buf_p; } ;


 int IFCOUNTER_OPACKETS ;
 int if_inc_counter (int ,int ,int) ;
 int m_freem (int *) ;

__attribute__((used)) static __inline void
send_complete(struct sbni_softc *sc)
{
 m_freem(sc->tx_buf_p);
 sc->tx_buf_p = ((void*)0);
 if_inc_counter(sc->ifp, IFCOUNTER_OPACKETS, 1);
}

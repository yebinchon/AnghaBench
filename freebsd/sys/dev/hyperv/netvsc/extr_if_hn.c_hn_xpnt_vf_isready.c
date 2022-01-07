
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {scalar_t__ hn_vf_rdytick; int * hn_vf_ifp; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int hn_xpnt_vf ;
 int hn_xpnt_vf_setready (struct hn_softc*) ;
 scalar_t__ ticks ;

__attribute__((used)) static bool
hn_xpnt_vf_isready(struct hn_softc *sc)
{

 HN_LOCK_ASSERT(sc);

 if (!hn_xpnt_vf || sc->hn_vf_ifp == ((void*)0))
  return (0);

 if (sc->hn_vf_rdytick == 0)
  return (1);

 if (sc->hn_vf_rdytick > ticks)
  return (0);


 hn_xpnt_vf_setready(sc);
 return (1);
}

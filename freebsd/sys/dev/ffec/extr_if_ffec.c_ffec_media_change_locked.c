
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffec_softc {int mii_softc; } ;


 int mii_mediachg (int ) ;

__attribute__((used)) static int
ffec_media_change_locked(struct ffec_softc *sc)
{

 return (mii_mediachg(sc->mii_softc));
}

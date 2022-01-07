
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vscphy_softc {int mii_sc; } ;


 int PHY_WRITE (int *,int ,int ) ;

__attribute__((used)) static inline void
vscphy_write(struct vscphy_softc *sc, u_int reg, u_int val)
{

 PHY_WRITE(&sc->mii_sc, reg, val);
}

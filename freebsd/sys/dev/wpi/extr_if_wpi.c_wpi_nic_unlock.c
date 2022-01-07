
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;


 int WPI_CLRBITS (struct wpi_softc*,int ,int ) ;
 int WPI_GP_CNTRL ;
 int WPI_GP_CNTRL_MAC_ACCESS_REQ ;

__attribute__((used)) static __inline void
wpi_nic_unlock(struct wpi_softc *sc)
{
 WPI_CLRBITS(sc, WPI_GP_CNTRL, WPI_GP_CNTRL_MAC_ACCESS_REQ);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct smc_softc {int smc_ifp; int * smc_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 struct mii_data* device_get_softc (int *) ;
 int ifmedia_ioctl (int ,struct ifreq*,int *,int ) ;

__attribute__((used)) static int
smc_mii_mediaioctl(struct smc_softc *sc, struct ifreq *ifr, u_long command)
{
 struct mii_data *mii;

 if (sc->smc_miibus == ((void*)0))
  return (EINVAL);

 mii = device_get_softc(sc->smc_miibus);
 return (ifmedia_ioctl(sc->smc_ifp, ifr, &mii->mii_media, command));
}

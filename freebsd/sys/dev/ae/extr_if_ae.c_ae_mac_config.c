
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_data {int mii_media_active; } ;
struct TYPE_6__ {int miibus; } ;
typedef TYPE_1__ ae_softc_t ;


 int AE_LOCK_ASSERT (TYPE_1__*) ;
 int AE_MAC_FULL_DUPLEX ;
 int AE_MAC_REG ;
 int AE_READ_4 (TYPE_1__*,int ) ;
 int AE_WRITE_4 (TYPE_1__*,int ,int ) ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static void
ae_mac_config(ae_softc_t *sc)
{
 struct mii_data *mii;
 uint32_t val;

 AE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->miibus);
 val = AE_READ_4(sc, AE_MAC_REG);
 val &= ~AE_MAC_FULL_DUPLEX;


 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
  val |= AE_MAC_FULL_DUPLEX;

 AE_WRITE_4(sc, AE_MAC_REG, val);
}

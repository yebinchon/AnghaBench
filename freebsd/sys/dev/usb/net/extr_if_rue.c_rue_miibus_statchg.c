
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rue_softc {int sc_mtx; } ;
struct mii_data {int mii_media_active; } ;
typedef int device_t ;


 struct mii_data* GET_MII (struct rue_softc*) ;
 scalar_t__ IFM_100_TX ;
 int IFM_FDX ;
 int IFM_GMASK ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int RUE_BMCR ;
 int RUE_BMCR_DUPLEX ;
 int RUE_BMCR_SPD_SET ;
 int RUE_CLRBIT (struct rue_softc*,int ,int) ;
 int RUE_CR ;
 int RUE_CR_RE ;
 int RUE_CR_TE ;
 int RUE_LOCK (struct rue_softc*) ;
 int RUE_SETBIT (struct rue_softc*,int ,int) ;
 int RUE_UNLOCK (struct rue_softc*) ;
 struct rue_softc* device_get_softc (int ) ;
 int mtx_owned (int *) ;
 int rue_csr_read_2 (struct rue_softc*,int ) ;
 int rue_csr_write_2 (struct rue_softc*,int ,int ) ;

__attribute__((used)) static void
rue_miibus_statchg(device_t dev)
{
}

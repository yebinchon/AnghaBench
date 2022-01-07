
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_mmc_stats {int txvlanframes_g; int txpauseframes; int txframecount_g; int txoctetcount_g; int txunderflowerror; int txbroadcastframes_g; int txmulticastframes_gb; int txunicastframes_gb; int tx1024tomaxoctets_gb; int tx512to1023octets_gb; int tx256to511octets_gb; int tx128to255octets_gb; int tx65to127octets_gb; int tx64octets_gb; int txmulticastframes_g; int txframecount_gb; int txoctetcount_gb; } ;
struct xgbe_prv_data {struct xgbe_mmc_stats mmc_stats; } ;


 int MMC_TISR ;
 int MMC_TX1024TOMAXOCTETS_GB_LO ;
 int MMC_TX128TO255OCTETS_GB_LO ;
 int MMC_TX256TO511OCTETS_GB_LO ;
 int MMC_TX512TO1023OCTETS_GB_LO ;
 int MMC_TX64OCTETS_GB_LO ;
 int MMC_TX65TO127OCTETS_GB_LO ;
 int MMC_TXBROADCASTFRAMES_GB_LO ;
 int MMC_TXBROADCASTFRAMES_G_LO ;
 int MMC_TXFRAMECOUNT_GB_LO ;
 int MMC_TXFRAMECOUNT_G_LO ;
 int MMC_TXMULTICASTFRAMES_GB_LO ;
 int MMC_TXMULTICASTFRAMES_G_LO ;
 int MMC_TXOCTETCOUNT_GB_LO ;
 int MMC_TXOCTETCOUNT_G_LO ;
 int MMC_TXPAUSEFRAMES_LO ;
 int MMC_TXUNDERFLOWERROR_LO ;
 int MMC_TXUNICASTFRAMES_GB_LO ;
 int MMC_TXVLANFRAMES_G_LO ;
 int TX1024TOMAXOCTETS_GB ;
 int TX128TO255OCTETS_GB ;
 int TX256TO511OCTETS_GB ;
 int TX512TO1023OCTETS_GB ;
 int TX64OCTETS_GB ;
 int TX65TO127OCTETS_GB ;
 int TXBROADCASTFRAMES_G ;
 int TXBROADCASTFRAMES_GB ;
 int TXFRAMECOUNT_G ;
 int TXFRAMECOUNT_GB ;
 int TXMULTICASTFRAMES_G ;
 int TXMULTICASTFRAMES_GB ;
 int TXOCTETCOUNT_G ;
 int TXOCTETCOUNT_GB ;
 int TXPAUSEFRAMES ;
 int TXUNDERFLOWERROR ;
 int TXUNICASTFRAMES_GB ;
 int TXVLANFRAMES_G ;
 scalar_t__ XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;
 scalar_t__ xgbe_mmc_read (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_tx_mmc_int(struct xgbe_prv_data *pdata)
{
 struct xgbe_mmc_stats *stats = &pdata->mmc_stats;
 unsigned int mmc_isr = XGMAC_IOREAD(pdata, MMC_TISR);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXOCTETCOUNT_GB))
  stats->txoctetcount_gb +=
   xgbe_mmc_read(pdata, MMC_TXOCTETCOUNT_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXFRAMECOUNT_GB))
  stats->txframecount_gb +=
   xgbe_mmc_read(pdata, MMC_TXFRAMECOUNT_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXBROADCASTFRAMES_G))
  stats->txbroadcastframes_g +=
   xgbe_mmc_read(pdata, MMC_TXBROADCASTFRAMES_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXMULTICASTFRAMES_G))
  stats->txmulticastframes_g +=
   xgbe_mmc_read(pdata, MMC_TXMULTICASTFRAMES_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TX64OCTETS_GB))
  stats->tx64octets_gb +=
   xgbe_mmc_read(pdata, MMC_TX64OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TX65TO127OCTETS_GB))
  stats->tx65to127octets_gb +=
   xgbe_mmc_read(pdata, MMC_TX65TO127OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TX128TO255OCTETS_GB))
  stats->tx128to255octets_gb +=
   xgbe_mmc_read(pdata, MMC_TX128TO255OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TX256TO511OCTETS_GB))
  stats->tx256to511octets_gb +=
   xgbe_mmc_read(pdata, MMC_TX256TO511OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TX512TO1023OCTETS_GB))
  stats->tx512to1023octets_gb +=
   xgbe_mmc_read(pdata, MMC_TX512TO1023OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TX1024TOMAXOCTETS_GB))
  stats->tx1024tomaxoctets_gb +=
   xgbe_mmc_read(pdata, MMC_TX1024TOMAXOCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXUNICASTFRAMES_GB))
  stats->txunicastframes_gb +=
   xgbe_mmc_read(pdata, MMC_TXUNICASTFRAMES_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXMULTICASTFRAMES_GB))
  stats->txmulticastframes_gb +=
   xgbe_mmc_read(pdata, MMC_TXMULTICASTFRAMES_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXBROADCASTFRAMES_GB))
  stats->txbroadcastframes_g +=
   xgbe_mmc_read(pdata, MMC_TXBROADCASTFRAMES_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXUNDERFLOWERROR))
  stats->txunderflowerror +=
   xgbe_mmc_read(pdata, MMC_TXUNDERFLOWERROR_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXOCTETCOUNT_G))
  stats->txoctetcount_g +=
   xgbe_mmc_read(pdata, MMC_TXOCTETCOUNT_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXFRAMECOUNT_G))
  stats->txframecount_g +=
   xgbe_mmc_read(pdata, MMC_TXFRAMECOUNT_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXPAUSEFRAMES))
  stats->txpauseframes +=
   xgbe_mmc_read(pdata, MMC_TXPAUSEFRAMES_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_TISR, TXVLANFRAMES_G))
  stats->txvlanframes_g +=
   xgbe_mmc_read(pdata, MMC_TXVLANFRAMES_G_LO);
}

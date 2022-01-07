
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_mmc_stats {int rxwatchdogerror; int rxvlanframes_gb; int rxfifooverflow; int rxpauseframes; int rxoutofrangetype; int rxlengtherror; int rxunicastframes_g; int rx1024tomaxoctets_gb; int rx512to1023octets_gb; int rx256to511octets_gb; int rx128to255octets_gb; int rx65to127octets_gb; int rx64octets_gb; int rxoversize_g; int rxundersize_g; int rxjabbererror; int rxrunterror; int rxcrcerror; int rxmulticastframes_g; int rxbroadcastframes_g; int rxoctetcount_g; int rxoctetcount_gb; int rxframecount_gb; int txvlanframes_g; int txpauseframes; int txframecount_g; int txoctetcount_g; int txunderflowerror; int txbroadcastframes_g; int txmulticastframes_gb; int txunicastframes_gb; int tx1024tomaxoctets_gb; int tx512to1023octets_gb; int tx256to511octets_gb; int tx128to255octets_gb; int tx65to127octets_gb; int tx64octets_gb; int txmulticastframes_g; int txframecount_gb; int txoctetcount_gb; } ;
struct xgbe_prv_data {struct xgbe_mmc_stats mmc_stats; } ;


 int MCF ;
 int MMC_CR ;
 int MMC_RX1024TOMAXOCTETS_GB_LO ;
 int MMC_RX128TO255OCTETS_GB_LO ;
 int MMC_RX256TO511OCTETS_GB_LO ;
 int MMC_RX512TO1023OCTETS_GB_LO ;
 int MMC_RX64OCTETS_GB_LO ;
 int MMC_RX65TO127OCTETS_GB_LO ;
 int MMC_RXBROADCASTFRAMES_G_LO ;
 int MMC_RXCRCERROR_LO ;
 int MMC_RXFIFOOVERFLOW_LO ;
 int MMC_RXFRAMECOUNT_GB_LO ;
 int MMC_RXJABBERERROR ;
 int MMC_RXLENGTHERROR_LO ;
 int MMC_RXMULTICASTFRAMES_G_LO ;
 int MMC_RXOCTETCOUNT_GB_LO ;
 int MMC_RXOCTETCOUNT_G_LO ;
 int MMC_RXOUTOFRANGETYPE_LO ;
 int MMC_RXOVERSIZE_G ;
 int MMC_RXPAUSEFRAMES_LO ;
 int MMC_RXRUNTERROR ;
 int MMC_RXUNDERSIZE_G ;
 int MMC_RXUNICASTFRAMES_G_LO ;
 int MMC_RXVLANFRAMES_GB_LO ;
 int MMC_RXWATCHDOGERROR ;
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
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 scalar_t__ xgbe_mmc_read (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_read_mmc_stats(struct xgbe_prv_data *pdata)
{
 struct xgbe_mmc_stats *stats = &pdata->mmc_stats;


 XGMAC_IOWRITE_BITS(pdata, MMC_CR, MCF, 1);

 stats->txoctetcount_gb +=
  xgbe_mmc_read(pdata, MMC_TXOCTETCOUNT_GB_LO);

 stats->txframecount_gb +=
  xgbe_mmc_read(pdata, MMC_TXFRAMECOUNT_GB_LO);

 stats->txbroadcastframes_g +=
  xgbe_mmc_read(pdata, MMC_TXBROADCASTFRAMES_G_LO);

 stats->txmulticastframes_g +=
  xgbe_mmc_read(pdata, MMC_TXMULTICASTFRAMES_G_LO);

 stats->tx64octets_gb +=
  xgbe_mmc_read(pdata, MMC_TX64OCTETS_GB_LO);

 stats->tx65to127octets_gb +=
  xgbe_mmc_read(pdata, MMC_TX65TO127OCTETS_GB_LO);

 stats->tx128to255octets_gb +=
  xgbe_mmc_read(pdata, MMC_TX128TO255OCTETS_GB_LO);

 stats->tx256to511octets_gb +=
  xgbe_mmc_read(pdata, MMC_TX256TO511OCTETS_GB_LO);

 stats->tx512to1023octets_gb +=
  xgbe_mmc_read(pdata, MMC_TX512TO1023OCTETS_GB_LO);

 stats->tx1024tomaxoctets_gb +=
  xgbe_mmc_read(pdata, MMC_TX1024TOMAXOCTETS_GB_LO);

 stats->txunicastframes_gb +=
  xgbe_mmc_read(pdata, MMC_TXUNICASTFRAMES_GB_LO);

 stats->txmulticastframes_gb +=
  xgbe_mmc_read(pdata, MMC_TXMULTICASTFRAMES_GB_LO);

 stats->txbroadcastframes_g +=
  xgbe_mmc_read(pdata, MMC_TXBROADCASTFRAMES_GB_LO);

 stats->txunderflowerror +=
  xgbe_mmc_read(pdata, MMC_TXUNDERFLOWERROR_LO);

 stats->txoctetcount_g +=
  xgbe_mmc_read(pdata, MMC_TXOCTETCOUNT_G_LO);

 stats->txframecount_g +=
  xgbe_mmc_read(pdata, MMC_TXFRAMECOUNT_G_LO);

 stats->txpauseframes +=
  xgbe_mmc_read(pdata, MMC_TXPAUSEFRAMES_LO);

 stats->txvlanframes_g +=
  xgbe_mmc_read(pdata, MMC_TXVLANFRAMES_G_LO);

 stats->rxframecount_gb +=
  xgbe_mmc_read(pdata, MMC_RXFRAMECOUNT_GB_LO);

 stats->rxoctetcount_gb +=
  xgbe_mmc_read(pdata, MMC_RXOCTETCOUNT_GB_LO);

 stats->rxoctetcount_g +=
  xgbe_mmc_read(pdata, MMC_RXOCTETCOUNT_G_LO);

 stats->rxbroadcastframes_g +=
  xgbe_mmc_read(pdata, MMC_RXBROADCASTFRAMES_G_LO);

 stats->rxmulticastframes_g +=
  xgbe_mmc_read(pdata, MMC_RXMULTICASTFRAMES_G_LO);

 stats->rxcrcerror +=
  xgbe_mmc_read(pdata, MMC_RXCRCERROR_LO);

 stats->rxrunterror +=
  xgbe_mmc_read(pdata, MMC_RXRUNTERROR);

 stats->rxjabbererror +=
  xgbe_mmc_read(pdata, MMC_RXJABBERERROR);

 stats->rxundersize_g +=
  xgbe_mmc_read(pdata, MMC_RXUNDERSIZE_G);

 stats->rxoversize_g +=
  xgbe_mmc_read(pdata, MMC_RXOVERSIZE_G);

 stats->rx64octets_gb +=
  xgbe_mmc_read(pdata, MMC_RX64OCTETS_GB_LO);

 stats->rx65to127octets_gb +=
  xgbe_mmc_read(pdata, MMC_RX65TO127OCTETS_GB_LO);

 stats->rx128to255octets_gb +=
  xgbe_mmc_read(pdata, MMC_RX128TO255OCTETS_GB_LO);

 stats->rx256to511octets_gb +=
  xgbe_mmc_read(pdata, MMC_RX256TO511OCTETS_GB_LO);

 stats->rx512to1023octets_gb +=
  xgbe_mmc_read(pdata, MMC_RX512TO1023OCTETS_GB_LO);

 stats->rx1024tomaxoctets_gb +=
  xgbe_mmc_read(pdata, MMC_RX1024TOMAXOCTETS_GB_LO);

 stats->rxunicastframes_g +=
  xgbe_mmc_read(pdata, MMC_RXUNICASTFRAMES_G_LO);

 stats->rxlengtherror +=
  xgbe_mmc_read(pdata, MMC_RXLENGTHERROR_LO);

 stats->rxoutofrangetype +=
  xgbe_mmc_read(pdata, MMC_RXOUTOFRANGETYPE_LO);

 stats->rxpauseframes +=
  xgbe_mmc_read(pdata, MMC_RXPAUSEFRAMES_LO);

 stats->rxfifooverflow +=
  xgbe_mmc_read(pdata, MMC_RXFIFOOVERFLOW_LO);

 stats->rxvlanframes_gb +=
  xgbe_mmc_read(pdata, MMC_RXVLANFRAMES_GB_LO);

 stats->rxwatchdogerror +=
  xgbe_mmc_read(pdata, MMC_RXWATCHDOGERROR);


 XGMAC_IOWRITE_BITS(pdata, MMC_CR, MCF, 0);
}

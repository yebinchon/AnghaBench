
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_mmc_stats {int rxwatchdogerror; int rxvlanframes_gb; int rxfifooverflow; int rxpauseframes; int rxoutofrangetype; int rxlengtherror; int rxunicastframes_g; int rx1024tomaxoctets_gb; int rx512to1023octets_gb; int rx256to511octets_gb; int rx128to255octets_gb; int rx65to127octets_gb; int rx64octets_gb; int rxoversize_g; int rxundersize_g; int rxjabbererror; int rxrunterror; int rxcrcerror; int rxmulticastframes_g; int rxbroadcastframes_g; int rxoctetcount_g; int rxoctetcount_gb; int rxframecount_gb; } ;
struct xgbe_prv_data {struct xgbe_mmc_stats mmc_stats; } ;


 int MMC_RISR ;
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
 int RX1024TOMAXOCTETS_GB ;
 int RX128TO255OCTETS_GB ;
 int RX256TO511OCTETS_GB ;
 int RX512TO1023OCTETS_GB ;
 int RX64OCTETS_GB ;
 int RX65TO127OCTETS_GB ;
 int RXBROADCASTFRAMES_G ;
 int RXCRCERROR ;
 int RXFIFOOVERFLOW ;
 int RXFRAMECOUNT_GB ;
 int RXJABBERERROR ;
 int RXLENGTHERROR ;
 int RXMULTICASTFRAMES_G ;
 int RXOCTETCOUNT_G ;
 int RXOCTETCOUNT_GB ;
 int RXOUTOFRANGETYPE ;
 int RXOVERSIZE_G ;
 int RXPAUSEFRAMES ;
 int RXRUNTERROR ;
 int RXUNDERSIZE_G ;
 int RXUNICASTFRAMES_G ;
 int RXVLANFRAMES_GB ;
 int RXWATCHDOGERROR ;
 scalar_t__ XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;
 scalar_t__ xgbe_mmc_read (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_rx_mmc_int(struct xgbe_prv_data *pdata)
{
 struct xgbe_mmc_stats *stats = &pdata->mmc_stats;
 unsigned int mmc_isr = XGMAC_IOREAD(pdata, MMC_RISR);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXFRAMECOUNT_GB))
  stats->rxframecount_gb +=
   xgbe_mmc_read(pdata, MMC_RXFRAMECOUNT_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXOCTETCOUNT_GB))
  stats->rxoctetcount_gb +=
   xgbe_mmc_read(pdata, MMC_RXOCTETCOUNT_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXOCTETCOUNT_G))
  stats->rxoctetcount_g +=
   xgbe_mmc_read(pdata, MMC_RXOCTETCOUNT_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXBROADCASTFRAMES_G))
  stats->rxbroadcastframes_g +=
   xgbe_mmc_read(pdata, MMC_RXBROADCASTFRAMES_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXMULTICASTFRAMES_G))
  stats->rxmulticastframes_g +=
   xgbe_mmc_read(pdata, MMC_RXMULTICASTFRAMES_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXCRCERROR))
  stats->rxcrcerror +=
   xgbe_mmc_read(pdata, MMC_RXCRCERROR_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXRUNTERROR))
  stats->rxrunterror +=
   xgbe_mmc_read(pdata, MMC_RXRUNTERROR);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXJABBERERROR))
  stats->rxjabbererror +=
   xgbe_mmc_read(pdata, MMC_RXJABBERERROR);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXUNDERSIZE_G))
  stats->rxundersize_g +=
   xgbe_mmc_read(pdata, MMC_RXUNDERSIZE_G);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXOVERSIZE_G))
  stats->rxoversize_g +=
   xgbe_mmc_read(pdata, MMC_RXOVERSIZE_G);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RX64OCTETS_GB))
  stats->rx64octets_gb +=
   xgbe_mmc_read(pdata, MMC_RX64OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RX65TO127OCTETS_GB))
  stats->rx65to127octets_gb +=
   xgbe_mmc_read(pdata, MMC_RX65TO127OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RX128TO255OCTETS_GB))
  stats->rx128to255octets_gb +=
   xgbe_mmc_read(pdata, MMC_RX128TO255OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RX256TO511OCTETS_GB))
  stats->rx256to511octets_gb +=
   xgbe_mmc_read(pdata, MMC_RX256TO511OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RX512TO1023OCTETS_GB))
  stats->rx512to1023octets_gb +=
   xgbe_mmc_read(pdata, MMC_RX512TO1023OCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RX1024TOMAXOCTETS_GB))
  stats->rx1024tomaxoctets_gb +=
   xgbe_mmc_read(pdata, MMC_RX1024TOMAXOCTETS_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXUNICASTFRAMES_G))
  stats->rxunicastframes_g +=
   xgbe_mmc_read(pdata, MMC_RXUNICASTFRAMES_G_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXLENGTHERROR))
  stats->rxlengtherror +=
   xgbe_mmc_read(pdata, MMC_RXLENGTHERROR_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXOUTOFRANGETYPE))
  stats->rxoutofrangetype +=
   xgbe_mmc_read(pdata, MMC_RXOUTOFRANGETYPE_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXPAUSEFRAMES))
  stats->rxpauseframes +=
   xgbe_mmc_read(pdata, MMC_RXPAUSEFRAMES_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXFIFOOVERFLOW))
  stats->rxfifooverflow +=
   xgbe_mmc_read(pdata, MMC_RXFIFOOVERFLOW_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXVLANFRAMES_GB))
  stats->rxvlanframes_gb +=
   xgbe_mmc_read(pdata, MMC_RXVLANFRAMES_GB_LO);

 if (XGMAC_GET_BITS(mmc_isr, MMC_RISR, RXWATCHDOGERROR))
  stats->rxwatchdogerror +=
   xgbe_mmc_read(pdata, MMC_RXWATCHDOGERROR);
}

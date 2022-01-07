
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct an_req {int an_len; int an_type; } ;
struct an_ltv_caps {int an_radiotype; scalar_t__ an_rx_diversity; scalar_t__ an_tx_diversity; int an_bootblockrev; int an_ifacerev; int an_fwsubrev; int an_fwrev; int an_hwrev; int * an_tx_powerlevels; int an_rates; int an_callid; int an_regdomain; int an_aironetaddr; int an_oemaddr; int an_prodvers; int an_prodname; int an_manufname; int an_prodnum; int an_oui; } ;
typedef int areq ;


 scalar_t__ AN_DIVERSITY_ANTENNA_1_AND_2 ;
 scalar_t__ AN_DIVERSITY_ANTENNA_1_ONLY ;
 scalar_t__ AN_DIVERSITY_ANTENNA_2_ONLY ;
 scalar_t__ AN_DIVERSITY_FACTORY_DEFAULT ;
 int AN_RADIOTYPE_80211_DS ;
 int AN_RADIOTYPE_80211_FH ;
 int AN_RADIOTYPE_LM2000_DS ;
 int AN_RID_CAPABILITIES ;
 int ETHER_ADDR_LEN ;
 int an_getval (char const*,struct an_req*) ;
 int an_printhex (char*,int) ;
 int an_printspeeds (int ,int) ;
 int an_printstr (char*,int) ;
 int an_printwords (int *,int) ;
 scalar_t__ ntohs (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
an_dumpcaps(const char *iface)
{
 struct an_ltv_caps *caps;
 struct an_req areq;
 u_int16_t tmp;

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_CAPABILITIES;

 an_getval(iface, &areq);

 caps = (struct an_ltv_caps *)&areq;

 printf("OUI:\t\t\t");
 an_printhex((char *)&caps->an_oui, 3);
 printf("\nProduct number:\t\t");
 an_printwords(&caps->an_prodnum, 1);
 printf("\nManufacturer name:\t");
 an_printstr((char *)&caps->an_manufname, 32);
 printf("\nProduce name:\t\t");
 an_printstr((char *)&caps->an_prodname, 16);
 printf("\nFirmware version:\t");
 an_printstr((char *)&caps->an_prodvers, 1);
 printf("\nOEM MAC address:\t");
 an_printhex((char *)&caps->an_oemaddr, ETHER_ADDR_LEN);
 printf("\nAironet MAC address:\t");
 an_printhex((char *)&caps->an_aironetaddr, ETHER_ADDR_LEN);
 printf("\nRadio type:\t\t[ ");
 if (caps->an_radiotype & AN_RADIOTYPE_80211_FH)
  printf("802.11 FH");
 else if (caps->an_radiotype & AN_RADIOTYPE_80211_DS)
  printf("802.11 DS");
 else if (caps->an_radiotype & AN_RADIOTYPE_LM2000_DS)
  printf("LM2000 DS");
 else
  printf("unknown (%x)", caps->an_radiotype);
 printf(" ]");
 printf("\nRegulatory domain:\t");
 an_printwords(&caps->an_regdomain, 1);
 printf("\nAssigned CallID:\t");
 an_printhex((char *)&caps->an_callid, 6);
 printf("\nSupported speeds:\t");
 an_printspeeds(caps->an_rates, 8);
 printf("\nRX Diversity:\t\t[ ");
 if (caps->an_rx_diversity == AN_DIVERSITY_FACTORY_DEFAULT)
  printf("factory default");
 else if (caps->an_rx_diversity == AN_DIVERSITY_ANTENNA_1_ONLY)
  printf("antenna 1 only");
 else if (caps->an_rx_diversity == AN_DIVERSITY_ANTENNA_2_ONLY)
  printf("antenna 2 only");
 else if (caps->an_rx_diversity == AN_DIVERSITY_ANTENNA_1_AND_2)
  printf("antenna 1 and 2");
 printf(" ]");
 printf("\nTX Diversity:\t\t[ ");
 if (caps->an_tx_diversity == AN_DIVERSITY_FACTORY_DEFAULT)
  printf("factory default");
 else if (caps->an_tx_diversity == AN_DIVERSITY_ANTENNA_1_ONLY)
  printf("antenna 1 only");
 else if (caps->an_tx_diversity == AN_DIVERSITY_ANTENNA_2_ONLY)
  printf("antenna 2 only");
 else if (caps->an_tx_diversity == AN_DIVERSITY_ANTENNA_1_AND_2)
  printf("antenna 1 and 2");
 printf(" ]");
 printf("\nSupported power levels:\t");
 an_printwords(caps->an_tx_powerlevels, 8);
 printf("\nHardware revision:\t");
 tmp = ntohs(caps->an_hwrev);
 an_printhex((char *)&tmp, 2);
 printf("\nSoftware revision:\t");
 tmp = ntohs(caps->an_fwrev);
 an_printhex((char *)&tmp, 2);
 printf("\nSoftware subrevision:\t");
 tmp = ntohs(caps->an_fwsubrev);
 an_printhex((char *)&tmp, 2);
 printf("\nInterface revision:\t");
 tmp = ntohs(caps->an_ifacerev);
 an_printhex((char *)&tmp, 2);
 printf("\nBootblock revision:\t");
 tmp = ntohs(caps->an_bootblockrev);
 an_printhex((char *)&tmp, 2);
 printf("\n");
 return;
}

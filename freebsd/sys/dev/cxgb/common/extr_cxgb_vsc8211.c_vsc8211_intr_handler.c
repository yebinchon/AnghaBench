
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 unsigned int CFG_CHG_INTR_MASK ;
 unsigned int INTR_MASK ;
 int VSC8211_INTR_STATUS ;
 unsigned int VSC_INTR_RX_FIFO ;
 unsigned int VSC_INTR_TX_FIFO ;
 int cphy_cause_fifo_error ;
 int cphy_cause_link_change ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int vsc8211_intr_handler(struct cphy *cphy)
{
 unsigned int cause;
 int err, cphy_cause = 0;

 err = mdio_read(cphy, 0, VSC8211_INTR_STATUS, &cause);
 if (err)
  return err;

 cause &= INTR_MASK;
 if (cause & CFG_CHG_INTR_MASK)
  cphy_cause |= cphy_cause_link_change;
 if (cause & (VSC_INTR_RX_FIFO | VSC_INTR_TX_FIFO))
  cphy_cause |= cphy_cause_fifo_error;
 return cphy_cause;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {scalar_t__ uc_rx_off; scalar_t__ uc_rx_stat_len; struct rtwn_data* uc_rx; } ;
struct rtwn_data {int * m; } ;


 int RTWN_USB_RX_LIST_COUNT ;
 int m_freem (int *) ;

__attribute__((used)) static void
rtwn_usb_reset_rx_list(struct rtwn_usb_softc *uc)
{
 int i;

 for (i = 0; i < RTWN_USB_RX_LIST_COUNT; i++) {
  struct rtwn_data *dp = &uc->uc_rx[i];

  if (dp->m != ((void*)0)) {
   m_freem(dp->m);
   dp->m = ((void*)0);
  }
 }
 uc->uc_rx_stat_len = 0;
 uc->uc_rx_off = 0;
}

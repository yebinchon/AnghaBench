
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;
struct upgt_data {int * ni; int * m; } ;


 int ieee80211_tx_complete (int *,int *,int ) ;

__attribute__((used)) static void
upgt_txeof(struct usb_xfer *xfer, struct upgt_data *data)
{

 if (data->m) {

  ieee80211_tx_complete(data->ni, data->m, 0);
  data->m = ((void*)0);
  data->ni = ((void*)0);
 }
}

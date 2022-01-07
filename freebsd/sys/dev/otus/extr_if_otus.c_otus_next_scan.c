
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_state; int ic_if; } ;
struct otus_softc {int sc_udev; TYPE_1__ sc_ic; } ;


 scalar_t__ IEEE80211_S_SCAN ;
 int ieee80211_next_scan (int *) ;
 scalar_t__ usbd_is_dying (int ) ;
 int usbd_ref_decr (int ) ;
 int usbd_ref_incr (int ) ;

void
otus_next_scan(void *arg, int pending)
{
}

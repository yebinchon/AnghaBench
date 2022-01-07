
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int dummy; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;



__attribute__((used)) static void
bwn_bt_disable(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;

 (void)sc;

}

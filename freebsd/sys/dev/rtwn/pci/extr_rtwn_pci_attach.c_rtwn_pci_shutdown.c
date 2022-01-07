
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_ic; } ;
struct rtwn_pci_softc {TYPE_1__ pc_sc; } ;
typedef int device_t ;


 struct rtwn_pci_softc* device_get_softc (int ) ;
 int ieee80211_stop_all (int *) ;

__attribute__((used)) static int
rtwn_pci_shutdown(device_t self)
{
 struct rtwn_pci_softc *pc = device_get_softc(self);

 ieee80211_stop_all(&pc->pc_sc.sc_ic);
 return (0);
}

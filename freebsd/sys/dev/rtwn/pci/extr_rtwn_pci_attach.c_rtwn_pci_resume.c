
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_pci_softc {int pc_sc; } ;
typedef int device_t ;


 struct rtwn_pci_softc* device_get_softc (int ) ;
 int rtwn_resume (int *) ;

__attribute__((used)) static int
rtwn_pci_resume(device_t self)
{
 struct rtwn_pci_softc *pc = device_get_softc(self);

 rtwn_resume(&pc->pc_sc);

 return (0);
}

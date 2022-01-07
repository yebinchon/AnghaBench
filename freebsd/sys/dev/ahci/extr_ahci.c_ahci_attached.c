
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int ch_mtx; struct ahci_channel** ch; } ;
struct ahci_channel {size_t unit; } ;
typedef int device_t ;


 struct ahci_controller* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ahci_attached(device_t dev, struct ahci_channel *ch)
{
 struct ahci_controller *ctlr = device_get_softc(dev);

 mtx_lock(&ctlr->ch_mtx);
 ctlr->ch[ch->unit] = ch;
 mtx_unlock(&ctlr->ch_mtx);
}

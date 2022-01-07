
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int ch_mtx; struct ahci_channel** ch; } ;
struct ahci_channel {int mtx; } ;
typedef int device_t ;


 int AHCI_MAX_PORTS ;
 int KASSERT (int,char*) ;
 struct ahci_controller* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

struct ahci_channel *
ahci_getch(device_t dev, int n)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 struct ahci_channel *ch;

 KASSERT(n >= 0 && n < AHCI_MAX_PORTS, ("Bad channel number %d", n));
 mtx_lock(&ctlr->ch_mtx);
 ch = ctlr->ch[n];
 if (ch != ((void*)0))
  mtx_lock(&ch->mtx);
 mtx_unlock(&ctlr->ch_mtx);
 return (ch);
}

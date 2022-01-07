
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_enclosure {int mtx; int sim; } ;
typedef int device_t ;


 struct ahci_enclosure* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static int
ahci_em_suspend(device_t dev)
{
 struct ahci_enclosure *enc = device_get_softc(dev);

 mtx_lock(&enc->mtx);
 xpt_freeze_simq(enc->sim, 1);
 mtx_unlock(&enc->mtx);
 return (0);
}

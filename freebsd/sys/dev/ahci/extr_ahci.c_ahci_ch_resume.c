
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_channel {int mtx; int sim; } ;
typedef int device_t ;


 int TRUE ;
 int ahci_ch_init (int ) ;
 int ahci_reset (struct ahci_channel*) ;
 struct ahci_channel* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static int
ahci_ch_resume(device_t dev)
{
 struct ahci_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 ahci_ch_init(dev);
 ahci_reset(ch);
 xpt_release_simq(ch->sim, TRUE);
 mtx_unlock(&ch->mtx);
 return (0);
}

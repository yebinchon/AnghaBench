
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdsmn_softc {int smn_lock; TYPE_1__* smn_pciid; } ;
typedef int device_t ;
struct TYPE_2__ {int amdsmn_data_reg; int amdsmn_addr_reg; } ;


 int device_get_parent (int ) ;
 struct amdsmn_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_write_config (int ,int ,int ,int) ;

int
amdsmn_write(device_t dev, uint32_t addr, uint32_t value)
{
 struct amdsmn_softc *sc = device_get_softc(dev);
 device_t parent;

 parent = device_get_parent(dev);

 mtx_lock(&sc->smn_lock);
 pci_write_config(parent, sc->smn_pciid->amdsmn_addr_reg, addr, 4);
 pci_write_config(parent, sc->smn_pciid->amdsmn_data_reg, value, 4);
 mtx_unlock(&sc->smn_lock);

 return (0);
}

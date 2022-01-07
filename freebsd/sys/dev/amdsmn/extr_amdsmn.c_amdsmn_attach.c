
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdsmn_softc {int smn_lock; int smn_pciid; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int amdsmn_match (int ,int *) ;
 int device_get_parent (int ) ;
 struct amdsmn_softc* device_get_softc (int ) ;
 int mtx_init (int *,char*,char*,int ) ;

__attribute__((used)) static int
amdsmn_attach(device_t dev)
{
 struct amdsmn_softc *sc = device_get_softc(dev);

 if (!amdsmn_match(device_get_parent(dev), &sc->smn_pciid))
  return (ENXIO);

 mtx_init(&sc->smn_lock, "SMN mtx", "SMN", MTX_DEF);
 return (0);
}

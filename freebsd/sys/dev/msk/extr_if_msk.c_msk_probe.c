
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {size_t msk_hw_id; int msk_hw_rev; } ;
typedef int device_t ;
typedef int desc ;


 int BUS_PROBE_DEFAULT ;
 size_t CHIP_ID_YUKON_XL ;
 int device_get_parent (int ) ;
 struct msk_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 char** model_name ;
 int snprintf (char*,int,char*,char*,size_t,int) ;

__attribute__((used)) static int
msk_probe(device_t dev)
{
 struct msk_softc *sc;
 char desc[100];

 sc = device_get_softc(device_get_parent(dev));






 snprintf(desc, sizeof(desc),
     "Marvell Technology Group Ltd. %s Id 0x%02x Rev 0x%02x",
     model_name[sc->msk_hw_id - CHIP_ID_YUKON_XL], sc->msk_hw_id,
     sc->msk_hw_rev);
 device_set_desc_copy(dev, desc);

 return (BUS_PROBE_DEFAULT);
}

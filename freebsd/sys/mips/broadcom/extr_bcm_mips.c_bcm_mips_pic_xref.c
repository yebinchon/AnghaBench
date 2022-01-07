
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_mips_softc {int dev; } ;


 uintptr_t BHND_BUS_GET_INTR_DOMAIN (int ,int ,int) ;
 int KASSERT (int,char*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static uintptr_t
bcm_mips_pic_xref(struct bcm_mips_softc *sc)
{
 uintptr_t xref;


 xref = BHND_BUS_GET_INTR_DOMAIN(device_get_parent(sc->dev), sc->dev,
     1);
 KASSERT(xref != 0, ("missing interrupt domain"));

 return (xref);
}

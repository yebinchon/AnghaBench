
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_softc {int ** tags; } ;
typedef int device_t ;


 int HDAC_UNSOL_FREE (int ,int ,int) ;
 int KASSERT (int,char*) ;
 int device_get_parent (int ) ;
 struct hdacc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
hdacc_unsol_free(device_t dev, device_t child, int tag)
{
 struct hdacc_softc *codec = device_get_softc(dev);

 KASSERT(tag >= 0 && tag <= 0x3f, ("Wrong tag value %d\n", tag));
 codec->tags[tag] = ((void*)0);
 HDAC_UNSOL_FREE(device_get_parent(dev), dev, tag);
}

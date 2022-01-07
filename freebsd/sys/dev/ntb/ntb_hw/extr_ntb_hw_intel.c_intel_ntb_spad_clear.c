
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {unsigned int spad_count; } ;
typedef int device_t ;


 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_spad_write (int ,unsigned int,int ) ;

__attribute__((used)) static void
intel_ntb_spad_clear(device_t dev)
{
 struct ntb_softc *ntb = device_get_softc(dev);
 unsigned i;

 for (i = 0; i < ntb->spad_count; i++)
  intel_ntb_spad_write(dev, i, 0);
}

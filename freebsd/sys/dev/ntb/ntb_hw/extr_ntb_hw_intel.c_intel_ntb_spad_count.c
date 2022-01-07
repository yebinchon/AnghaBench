
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ntb_softc {int spad_count; } ;
typedef int device_t ;


 struct ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
intel_ntb_spad_count(device_t dev)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 return (ntb->spad_count);
}

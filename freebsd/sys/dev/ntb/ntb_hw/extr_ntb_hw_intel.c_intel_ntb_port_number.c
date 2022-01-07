
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ dev_type; } ;
typedef int device_t ;


 scalar_t__ NTB_DEV_USD ;
 struct ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
intel_ntb_port_number(device_t dev)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 return (ntb->dev_type == NTB_DEV_USD ? 0 : 1);
}

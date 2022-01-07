
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int uc_sc; } ;
typedef int device_t ;


 struct rtwn_usb_softc* device_get_softc (int ) ;
 int rtwn_suspend (int *) ;

__attribute__((used)) static int
rtwn_usb_suspend(device_t self)
{
 struct rtwn_usb_softc *uc = device_get_softc(self);

 rtwn_suspend(&uc->uc_sc);

 return (0);
}

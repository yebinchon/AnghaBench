
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {int bus; } ;
struct avr32dci_softc {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 struct avr32dci_softc* AVR32_BUS2SC (int ) ;
 int AVR32_EPTSETSTA (int) ;
 int AVR32_EPTSTA_FRCESTALL ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int ) ;
 int DPRINTFN (int,char*,struct usb_endpoint*) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;

__attribute__((used)) static void
avr32dci_set_stall(struct usb_device *udev,
    struct usb_endpoint *pipe, uint8_t *did_stall)
{
 struct avr32dci_softc *sc;
 uint8_t ep_no;

 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);

 DPRINTFN(5, "pipe=%p\n", pipe);

 sc = AVR32_BUS2SC(udev->bus);

 ep_no = (pipe->edesc->bEndpointAddress & UE_ADDR);

 AVR32_WRITE_4(sc, AVR32_EPTSETSTA(ep_no), AVR32_EPTSTA_FRCESTALL);
}

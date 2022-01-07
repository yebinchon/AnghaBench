
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint8_t ;
struct TYPE_7__ {int usbrev; int * methods; } ;
struct octusb_softc {scalar_t__ sc_noport; TYPE_2__ sc_bus; TYPE_1__* sc_port; } ;
typedef int cvmx_usb_initialize_flags_t ;
struct TYPE_6__ {int disabled; int state; } ;


 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_AUTO ;
 int CVMX_USB_INITIALIZE_FLAGS_DEBUG_ALL ;
 scalar_t__ OCTUSB_MAX_PORTS ;
 int USB_BUS_LOCK (TYPE_2__*) ;
 int USB_BUS_UNLOCK (TYPE_2__*) ;
 int USB_REV_2_0 ;
 scalar_t__ cvmx_usb_get_num_ports () ;
 int cvmx_usb_initialize (int *,size_t,int ) ;
 int octusb_bus_methods ;
 int octusb_do_poll (TYPE_2__*) ;
 int octusb_iterate_hw_softc ;
 int octusbdebug ;
 int usb_bus_mem_flush_all (TYPE_2__*,int *) ;

usb_error_t
octusb_init(struct octusb_softc *sc)
{
 cvmx_usb_initialize_flags_t flags;
 int status;
 uint8_t x;



 usb_bus_mem_flush_all(&sc->sc_bus, &octusb_iterate_hw_softc);


 sc->sc_bus.methods = &octusb_bus_methods;


 sc->sc_noport = cvmx_usb_get_num_ports();


 if (sc->sc_noport > OCTUSB_MAX_PORTS)
  sc->sc_noport = OCTUSB_MAX_PORTS;


 sc->sc_bus.usbrev = USB_REV_2_0;


 flags = CVMX_USB_INITIALIZE_FLAGS_CLOCK_AUTO;





 USB_BUS_LOCK(&sc->sc_bus);


 for (x = 0; x != sc->sc_noport; x++) {
  status = cvmx_usb_initialize(&sc->sc_port[x].state, x, flags);
  if (status < 0)
   sc->sc_port[x].disabled = 1;
 }

 USB_BUS_UNLOCK(&sc->sc_bus);


 octusb_do_poll(&sc->sc_bus);

 return (0);
}

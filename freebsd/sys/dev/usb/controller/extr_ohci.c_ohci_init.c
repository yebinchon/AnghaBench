
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint16_t ;
struct usb_page_search {TYPE_2__* buffer; } ;
struct TYPE_14__ {int usbrev; int bus_mtx; int * methods; } ;
struct TYPE_10__ {int hcca_pc; int * intr_start_pc; int isoc_start_pc; int bulk_start_pc; int ctrl_start_pc; } ;
struct TYPE_12__ {TYPE_5__ sc_bus; TYPE_4__* sc_isoc_p_last; TYPE_4__** sc_intr_p_last; int sc_tmo_rhsc; TYPE_2__* sc_hcca_p; TYPE_1__ sc_hw; void* sc_bulk_p_last; void* sc_ctrl_p_last; int sc_eintrs; } ;
typedef TYPE_3__ ohci_softc_t ;
struct TYPE_13__ {int ed_self; int ed_next; struct TYPE_13__* next; } ;
typedef TYPE_4__ ohci_ed_t ;
struct TYPE_11__ {int * hcca_interrupt_table; } ;


 int DPRINTF (char*) ;
 int OHCI_NORMAL_INTRS ;
 size_t OHCI_NO_EDS ;
 size_t OHCI_NO_INTRS ;
 int USB_ERR_INVAL ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_REV_1_0 ;
 int ohci_bus_methods ;
 scalar_t__ ohci_controller_init (TYPE_3__*,int ) ;
 int ohci_do_poll (TYPE_5__*) ;
 int ohci_dump_ed (TYPE_4__*) ;
 void* ohci_init_ed (int *) ;
 int ohci_iterate_hw_softc ;
 int ohcidebug ;
 int printf (char*,...) ;
 int usb_bus_mem_flush_all (TYPE_5__*,int *) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;

usb_error_t
ohci_init(ohci_softc_t *sc)
{
 struct usb_page_search buf_res;
 uint16_t i;
 uint16_t bit;
 uint16_t x;
 uint16_t y;

 DPRINTF("start\n");

 sc->sc_eintrs = OHCI_NORMAL_INTRS;





 sc->sc_ctrl_p_last =
     ohci_init_ed(&sc->sc_hw.ctrl_start_pc);

 sc->sc_bulk_p_last =
     ohci_init_ed(&sc->sc_hw.bulk_start_pc);

 sc->sc_isoc_p_last =
     ohci_init_ed(&sc->sc_hw.isoc_start_pc);

 for (i = 0; i != OHCI_NO_EDS; i++) {
  sc->sc_intr_p_last[i] =
      ohci_init_ed(sc->sc_hw.intr_start_pc + i);
 }





 bit = OHCI_NO_EDS / 2;
 while (bit) {
  x = bit;
  while (x & bit) {
   ohci_ed_t *ed_x;
   ohci_ed_t *ed_y;

   y = (x ^ bit) | (bit / 2);




   ed_x = sc->sc_intr_p_last[x];
   ed_y = sc->sc_intr_p_last[y];

   ed_x->next = ((void*)0);
   ed_x->ed_next = ed_y->ed_self;

   x++;
  }
  bit >>= 1;
 }

 if (1) {

  ohci_ed_t *ed_int;
  ohci_ed_t *ed_isc;

  ed_int = sc->sc_intr_p_last[0];
  ed_isc = sc->sc_isoc_p_last;


  ed_int->next = ed_isc;
  ed_int->ed_next = ed_isc->ed_self;
 }
 usbd_get_page(&sc->sc_hw.hcca_pc, 0, &buf_res);

 sc->sc_hcca_p = buf_res.buffer;





 for (i = 0; i != OHCI_NO_INTRS; i++) {
  sc->sc_hcca_p->hcca_interrupt_table[i] =
      sc->sc_intr_p_last[i | (OHCI_NO_EDS / 2)]->ed_self;
 }


 usb_bus_mem_flush_all(&sc->sc_bus, &ohci_iterate_hw_softc);


 sc->sc_bus.methods = &ohci_bus_methods;

 usb_callout_init_mtx(&sc->sc_tmo_rhsc, &sc->sc_bus.bus_mtx, 0);
 sc->sc_bus.usbrev = USB_REV_1_0;

 if (ohci_controller_init(sc, 0) != 0)
  return (USB_ERR_INVAL);


 ohci_do_poll(&sc->sc_bus);
 return (USB_ERR_NORMAL_COMPLETION);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_2__ {int page_cache; void* td_token; void* td_status; struct TYPE_2__* obj_next; } ;
typedef TYPE_1__ uhci_td_t ;
struct usb_xfer {TYPE_1__** td_start; int address; int endpointno; } ;


 scalar_t__ UE_DIR_IN ;
 scalar_t__ UE_GET_DIR (int ) ;
 void* UHCI_TD_IN (int ,int ,int ,int ) ;
 void* UHCI_TD_IOS ;
 void* UHCI_TD_OUT (int ,int ,int ,int ) ;
 void* htole32 (void*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static void
uhci_device_isoc_open(struct usb_xfer *xfer)
{
 uhci_td_t *td;
 uint32_t td_token;
 uint8_t ds;

 td_token =
     (UE_GET_DIR(xfer->endpointno) == UE_DIR_IN) ?
     UHCI_TD_IN(0, xfer->endpointno, xfer->address, 0) :
     UHCI_TD_OUT(0, xfer->endpointno, xfer->address, 0);

 td_token = htole32(td_token);



 for (ds = 0; ds != 2; ds++) {

  for (td = xfer->td_start[ds]; td; td = td->obj_next) {


   td->td_status = htole32(UHCI_TD_IOS);
   td->td_token = td_token;

   usb_pc_cpu_flush(td->page_cache);
  }
 }
}

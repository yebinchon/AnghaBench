
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ehci_softc_t ;


 void* EREAD4 (int *,int ) ;
 int EWRITE4 (int *,int ,int ) ;
 int FILTER_HANDLED ;
 unsigned int MV_USB_ADDR_DECODE_ERR ;
 unsigned int MV_USB_DEVICE_UNDERFLOW ;
 unsigned int MV_USB_HOST_OVERFLOW ;
 unsigned int MV_USB_HOST_UNDERFLOW ;
 int USB_BRIDGE_ERR_ADDR ;
 int USB_BRIDGE_INTR_CAUSE ;
 int printf (char*,...) ;

__attribute__((used)) static int
err_intr(void *arg)
{
 ehci_softc_t *sc = arg;
 unsigned int cause;

 cause = EREAD4(sc, USB_BRIDGE_INTR_CAUSE);
 if (cause) {
  printf("USB error: ");
  if (cause & MV_USB_ADDR_DECODE_ERR) {
   uint32_t addr;

   addr = EREAD4(sc, USB_BRIDGE_ERR_ADDR);
   printf("address decoding error (addr=%#x)\n", addr);
  }
  if (cause & MV_USB_HOST_UNDERFLOW)
   printf("host underflow\n");
  if (cause & MV_USB_HOST_OVERFLOW)
   printf("host overflow\n");
  if (cause & MV_USB_DEVICE_UNDERFLOW)
   printf("device underflow\n");
  if (cause & ~(MV_USB_ADDR_DECODE_ERR | MV_USB_HOST_UNDERFLOW |
      MV_USB_HOST_OVERFLOW | MV_USB_DEVICE_UNDERFLOW))
   printf("unknown cause (cause=%#x)\n", cause);

  EWRITE4(sc, USB_BRIDGE_INTR_CAUSE, 0);
 }
 return (FILTER_HANDLED);
}

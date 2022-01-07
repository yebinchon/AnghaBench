
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hci {int hci_port; } ;
typedef enum hci_usbev { ____Placeholder_hci_usbev } hci_usbev ;


 int DPRINTF (char*) ;

__attribute__((used)) static int
pci_xhci_dev_event(struct usb_hci *hci, enum hci_usbev evid, void *param)
{

 DPRINTF(("xhci device event port %d\r\n", hci->hci_port));
 return (0);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct usb_cdc_cm_descriptor {int bLength; int bmCapabilities; } ;
struct usb_cdc_acm_descriptor {int bLength; int bmCapabilities; } ;
struct usb_attach_arg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UDESCSUB_CDC_ACM ; 
 int /*<<< orphan*/  UDESCSUB_CDC_CM ; 
 int /*<<< orphan*/  UDESC_CS_INTERFACE ; 
 int USB_CDC_CM_DOES_CM ; 
 int USB_CDC_CM_OVER_DATA ; 
 void* FUNC1 (struct usb_attach_arg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct usb_attach_arg *uaa, uint8_t *cm, uint8_t *acm)
{
	struct usb_cdc_cm_descriptor *cmd;
	struct usb_cdc_acm_descriptor *cad;

	cmd = FUNC1(uaa, UDESC_CS_INTERFACE, UDESCSUB_CDC_CM);
	if ((cmd == NULL) || (cmd->bLength < sizeof(*cmd))) {
		FUNC0("no CM desc (faking one)\n");
		*cm = USB_CDC_CM_DOES_CM | USB_CDC_CM_OVER_DATA;
	} else
		*cm = cmd->bmCapabilities;

	cad = FUNC1(uaa, UDESC_CS_INTERFACE, UDESCSUB_CDC_ACM);
	if ((cad == NULL) || (cad->bLength < sizeof(*cad))) {
		FUNC0("no ACM desc\n");
		*acm = 0;
	} else
		*acm = cad->bmCapabilities;
}
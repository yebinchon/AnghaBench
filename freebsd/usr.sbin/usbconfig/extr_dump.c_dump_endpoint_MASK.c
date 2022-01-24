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
struct LIBUSB20_ENDPOINT_DESC_DECODED {int dummy; } ;
struct libusb20_endpoint {int /*<<< orphan*/  extra; struct LIBUSB20_ENDPOINT_DESC_DECODED desc; } ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct LIBUSB20_ENDPOINT_DESC_DECODED*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2(struct libusb20_device *pdev,
    struct libusb20_endpoint *ep)
{
	struct LIBUSB20_ENDPOINT_DESC_DECODED *edesc;

	edesc = &ep->desc;
	FUNC0(DUMP3, edesc);
	FUNC1(&ep->extra, "  " "  " "  ");
	return;
}
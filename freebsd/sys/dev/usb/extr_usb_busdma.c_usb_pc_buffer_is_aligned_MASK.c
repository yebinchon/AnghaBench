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
typedef  scalar_t__ usb_frlength_t ;
typedef  int uint8_t ;
struct usb_page_search {scalar_t__ length; int /*<<< orphan*/  buffer; } ;
struct usb_page_cache {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_page_cache*,scalar_t__,struct usb_page_search*) ; 

uint8_t
FUNC2(struct usb_page_cache *pc, usb_frlength_t offset,
    usb_frlength_t len, usb_frlength_t mask)
{
	struct usb_page_search buf_res;

	while (len != 0) {

		FUNC1(pc, offset, &buf_res);

		if (buf_res.length > len)
			buf_res.length = len;
		if (FUNC0(buf_res.buffer) & mask)
			return (0);
		if (buf_res.length & mask)
			return (0);

		offset += buf_res.length;
		len -= buf_res.length;
	}
	return (1);
}
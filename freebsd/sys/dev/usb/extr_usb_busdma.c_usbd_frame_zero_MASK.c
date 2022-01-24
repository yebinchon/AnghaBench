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
struct usb_page_search {scalar_t__ length; int /*<<< orphan*/  buffer; } ;
struct usb_page_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_page_cache*,scalar_t__,struct usb_page_search*) ; 

void
FUNC2(struct usb_page_cache *cache, usb_frlength_t offset,
    usb_frlength_t len)
{
	struct usb_page_search res;

	while (len != 0) {

		FUNC1(cache, offset, &res);

		if (res.length > len) {
			res.length = len;
		}
		FUNC0(res.buffer, 0, res.length);

		offset += res.length;
		len -= res.length;
	}
}
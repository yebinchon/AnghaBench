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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct hid_item {int pos; int report_count; scalar_t__ logical_minimum; scalar_t__ report_size; } ;

/* Variables and functions */
 scalar_t__ hexdump ; 
 int FUNC0 (int /*<<< orphan*/ *,struct hid_item*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(u_char *buf, struct hid_item *h)
{
	u_int data;
	int i, pos;

	pos = h->pos;
	for (i = 0; i < h->report_count; i++) {
		data = FUNC0(buf, h);
		if (i > 0)
			FUNC1(" ");
		if (h->logical_minimum < 0)
			FUNC1("%d", (int)data);
		else
			FUNC1("%u", data);
                if (hexdump)
			FUNC1(" [0x%x]", data);
		h->pos += h->report_size;
	}
	h->pos = pos;
}
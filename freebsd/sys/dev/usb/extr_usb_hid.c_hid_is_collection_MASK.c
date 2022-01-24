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
typedef  int /*<<< orphan*/  usb_size_t ;
struct hid_item {scalar_t__ kind; scalar_t__ usage; } ;
struct hid_data {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ hid_collection ; 
 int /*<<< orphan*/  FUNC0 (struct hid_data*) ; 
 int FUNC1 (struct hid_data*,struct hid_item*) ; 
 int /*<<< orphan*/  hid_input ; 
 struct hid_data* FUNC2 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(const void *desc, usb_size_t size, int32_t usage)
{
	struct hid_data *hd;
	struct hid_item hi;
	int err;

	hd = FUNC2(desc, size, hid_input);
	if (hd == NULL)
		return (0);

	while ((err = FUNC1(hd, &hi))) {
		 if (hi.kind == hid_collection &&
		     hi.usage == usage)
			break;
	}
	FUNC0(hd);
	return (err);
}
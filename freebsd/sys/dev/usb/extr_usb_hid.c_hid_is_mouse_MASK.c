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
typedef  int /*<<< orphan*/  uint16_t ;
struct hid_item {int kind; int collection; int flags; int /*<<< orphan*/  usage; } ;
struct hid_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HIO_CONST ; 
 int HIO_RELATIVE ; 
 int /*<<< orphan*/  HUG_MOUSE ; 
 int /*<<< orphan*/  HUG_X ; 
 int /*<<< orphan*/  HUG_Y ; 
 int /*<<< orphan*/  HUP_GENERIC_DESKTOP ; 
#define  hid_collection 130 
 int /*<<< orphan*/  FUNC1 (struct hid_data*) ; 
#define  hid_endcollection 129 
 scalar_t__ FUNC2 (struct hid_data*,struct hid_item*) ; 
#define  hid_input 128 
 struct hid_data* FUNC3 (void const*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(const void *d_ptr, uint16_t d_len)
{
	struct hid_data *hd;
	struct hid_item hi;
	int mdepth;
	int found;

	hd = FUNC3(d_ptr, d_len, 1 << hid_input);
	if (hd == NULL)
		return (0);

	mdepth = 0;
	found = 0;

	while (FUNC2(hd, &hi)) {
		switch (hi.kind) {
		case hid_collection:
			if (mdepth != 0)
				mdepth++;
			else if (hi.collection == 1 &&
			     hi.usage ==
			      FUNC0(HUP_GENERIC_DESKTOP, HUG_MOUSE))
				mdepth++;
			break;
		case hid_endcollection:
			if (mdepth != 0)
				mdepth--;
			break;
		case hid_input:
			if (mdepth == 0)
				break;
			if (hi.usage ==
			     FUNC0(HUP_GENERIC_DESKTOP, HUG_X) &&
			    (hi.flags & (HIO_CONST|HIO_RELATIVE)) == HIO_RELATIVE)
				found++;
			if (hi.usage ==
			     FUNC0(HUP_GENERIC_DESKTOP, HUG_Y) &&
			    (hi.flags & (HIO_CONST|HIO_RELATIVE)) == HIO_RELATIVE)
				found++;
			break;
		default:
			break;
		}
	}
	FUNC1(hd);
	return (found);
}
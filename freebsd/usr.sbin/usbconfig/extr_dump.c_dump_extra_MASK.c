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
struct libusb20_me_struct {int dummy; } ;

/* Variables and functions */
 int* FUNC0 (struct libusb20_me_struct*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct libusb20_me_struct *str, const char *plevel)
{
	const uint8_t *ptr;
	uint8_t x;

	ptr = NULL;

	while ((ptr = FUNC0(str, ptr))) {
		FUNC1("\n" "%sAdditional Descriptor\n\n", plevel);
		FUNC1("%sbLength = 0x%02x\n", plevel, ptr[0]);
		FUNC1("%sbDescriptorType = 0x%02x\n", plevel, ptr[1]);
		if (ptr[0] > 1)
			FUNC1("%sbDescriptorSubType = 0x%02x\n",
			    plevel, ptr[2]);
		FUNC1("%s RAW dump: ", plevel);
		for (x = 0; x != ptr[0]; x++) {
			if ((x % 8) == 0) {
				FUNC1("\n%s 0x%02x | ", plevel, x);
			}
			FUNC1("0x%02x%s", ptr[x],
			    (x != (ptr[0] - 1)) ? ", " : (x % 8) ? "\n" : "");
		}
		FUNC1("\n");
	}
	return;
}
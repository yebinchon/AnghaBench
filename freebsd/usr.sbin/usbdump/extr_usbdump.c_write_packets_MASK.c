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
struct usbcap {int /*<<< orphan*/  wfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const*,int const) ; 

__attribute__((used)) static void
FUNC3(struct usbcap *p, const uint8_t *data, const int datalen)
{
	int len = FUNC1(datalen);
	int ret;

	ret = FUNC2(p->wfd, &len, sizeof(int));
	if (ret != sizeof(int)) {
		FUNC0(EXIT_FAILURE, "Could not write length "
		    "field of USB data payload");
	}
	ret = FUNC2(p->wfd, data, datalen);
	if (ret != datalen) {
		FUNC0(EXIT_FAILURE, "Could not write "
		    "complete USB data payload");
	}
}
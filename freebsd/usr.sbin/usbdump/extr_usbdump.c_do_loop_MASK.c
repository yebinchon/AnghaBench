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
typedef  int /*<<< orphan*/  uint8_t ;
struct usbcap {scalar_t__ buffer; int /*<<< orphan*/  bufsize; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
#define  EINTR 128 
 scalar_t__ doexit ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/ * w_arg ; 
 int /*<<< orphan*/  FUNC5 (struct usbcap*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC6(struct usbcap *p)
{
	int cc;

	while (doexit == 0) {
		cc = FUNC3(p->fd, (uint8_t *)p->buffer, p->bufsize);
		if (cc < 0) {
			switch (errno) {
			case EINTR:
				break;
			default:
				FUNC1(stderr, "read: %s\n", FUNC4(errno));
				return;
			}
			continue;
		}
		if (cc == 0)
			continue;

		FUNC0(p->buffer, cc);

		if (w_arg != NULL)
			FUNC5(p, p->buffer, cc);
		FUNC2(p->buffer, cc);
	}
}
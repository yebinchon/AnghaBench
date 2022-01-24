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
struct usbcap {int /*<<< orphan*/  rfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int FUNC4 (int) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*,int) ; 
 int uf_minor ; 

__attribute__((used)) static void
FUNC8(struct usbcap *p)
{
	int datalen;
	int ret;
	uint8_t *data;

	while ((ret = FUNC7(p->rfd, &datalen, sizeof(int))) == sizeof(int)) {
		datalen = FUNC4(datalen);
		data = FUNC5(datalen);
		if (data == NULL)
			FUNC1(EX_SOFTWARE, "Out of memory.");
		ret = FUNC7(p->rfd, data, datalen);
		if (ret != datalen) {
			FUNC0(EXIT_FAILURE, "Could not read complete "
			    "USB data payload");
		}
		if (uf_minor == 2)
			FUNC2(data, datalen);

		FUNC6(data, datalen);
		FUNC3(data);
	}
}
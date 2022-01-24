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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const char *element, unsigned char *buf,
				    int len)
{
	int i;
	int t;

	FUNC0("<%s>",element);
	for (i = 0; i < len; i++) {
		t = (unsigned char)buf[i];
		if (t >= 32 && t < 127)
			FUNC0("%c",t);
	}
	FUNC0("</%s>\n",element);

	FUNC0("<%s:hex>",element);
	for (i = 0; i < len; i++) {
		t = (unsigned char)buf[i];
		FUNC0(" %x",t);
	}
	FUNC0("</%s:hex>\n",element);
}
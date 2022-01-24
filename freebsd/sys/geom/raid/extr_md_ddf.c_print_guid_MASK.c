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
typedef  char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(uint8_t *buf)
{
	int i, ascii;

	ascii = 1;
	for (i = 0; i < 24; i++) {
		if (buf[i] != 0 && (buf[i] < ' ' || buf[i] > 127)) {
			ascii = 0;
			break;
		}
	}
	if (ascii) {
		FUNC0("'%.24s'", buf);
	} else {
		for (i = 0; i < 24; i++)
			FUNC0("%02x", buf[i]);
	}
}
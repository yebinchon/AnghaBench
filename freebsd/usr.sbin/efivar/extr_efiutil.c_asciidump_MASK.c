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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(uint8_t *data, size_t datalen)
{
	size_t i;
	int len;

	len = 0;
	for (i = 0; i < datalen; i++) {
		if (FUNC0(data[i])) {
			len++;
			if (len > 80) {
				len = 0;
				FUNC1("\n");
			}
			FUNC1("%c", data[i]);
		} else {
			len +=3;
			if (len > 80) {
				len = 0;
				FUNC1("\n");
			}
			FUNC1("%%%02x", data[i]);
		}
	}
	FUNC1("\n");
}
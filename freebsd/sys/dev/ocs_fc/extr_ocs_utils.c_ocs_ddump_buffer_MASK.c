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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;

/* Variables and functions */
 int OCS_NEWLINE_MOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC1(ocs_textbuf_t *textbuf, const char *name, uint32_t instance, void *buffer, uint32_t size)
{
	uint32_t *dword;
	uint32_t i;
	uint32_t count;

	count = size / sizeof(uint32_t);

	if (count == 0) {
		return;
	}

	FUNC0(textbuf, "<%s type=\"buffer\" instance=\"%d\">\n", name, instance);

	dword = buffer;
	for (i = 0; i < count; i++) {
#define OCS_NEWLINE_MOD	8
		FUNC0(textbuf, "%08x ", *dword++);
		if ((i % OCS_NEWLINE_MOD) == (OCS_NEWLINE_MOD - 1)) {
			FUNC0(textbuf, "\n");
		}
	}

	FUNC0(textbuf, "</%s>\n", name);
}
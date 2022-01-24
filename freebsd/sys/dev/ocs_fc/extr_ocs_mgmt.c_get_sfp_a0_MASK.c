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
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
typedef  int /*<<< orphan*/  ocs_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SFP_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC4 (char*,int,char*,char) ; 

__attribute__((used)) static void
FUNC5(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
	uint8_t *page_data;
	char *buf;
	int i;
	int32_t bytes_read;

	page_data = FUNC1(ocs, SFP_PAGE_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (page_data == NULL) {
		return;
	}

	buf = FUNC1(ocs, (SFP_PAGE_SIZE * 3) + 1, OCS_M_ZERO | OCS_M_NOWAIT);
	if (buf == NULL) {
		FUNC0(ocs, page_data, SFP_PAGE_SIZE);
		return;
	}

	bytes_read = FUNC3(ocs, 0xa0, page_data, SFP_PAGE_SIZE);

	if (bytes_read <= 0) {
		FUNC2(textbuf, MGMT_MODE_RD, "sfp_a0", "(unknown)");
	} else {
		char *d = buf;
		uint8_t *s = page_data;
		int buffer_remaining = (SFP_PAGE_SIZE * 3) + 1;
		int bytes_added;

		for (i = 0; i < bytes_read; i++) {
			bytes_added = FUNC4(d, buffer_remaining, "%02x ", *s);
			++s;
			d += bytes_added;
			buffer_remaining -= bytes_added;
		}
		*d = '\0';
		FUNC2(textbuf, MGMT_MODE_RD, "sfp_a0", buf);
	}

	FUNC0(ocs, page_data, SFP_PAGE_SIZE);
	FUNC0(ocs, buf, (3 * SFP_PAGE_SIZE) + 1);
}
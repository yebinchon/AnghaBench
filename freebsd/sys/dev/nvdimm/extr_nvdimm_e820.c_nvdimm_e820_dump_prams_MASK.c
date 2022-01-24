#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uintmax_t ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {char const* size; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int pram_nreg ; 
 TYPE_1__* pram_segments ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,char*,int,...) ; 
 int /*<<< orphan*/  sbuf_printf_drain ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(device_t dev, const char *func, int hintunit)
{
	char buffer[256];
	struct sbuf sb;
	bool printed = false;
	unsigned i;

	FUNC4(&sb, buffer, sizeof(buffer), SBUF_FIXEDLEN);
	FUNC7(&sb, sbuf_printf_drain, NULL);

	FUNC5(&sb, "%s: %s: ", FUNC0(dev), func);
	if (hintunit < 0)
		FUNC1(&sb, "Found BIOS PRAM regions: ");
	else
		FUNC5(&sb, "Remaining unallocated PRAM regions after "
		    "hint %d: ", hintunit);

	for (i = 0; i < pram_nreg; i++) {
		if (pram_segments[i].size == 0)
			continue;
		if (printed)
			FUNC6(&sb, ',');
		else
			printed = true;
		FUNC5(&sb, "0x%jx-0x%jx",
		    (uintmax_t)pram_segments[i].start,
		    (uintmax_t)pram_segments[i].start + pram_segments[i].size
		    - 1);
	}

	if (!printed)
		FUNC1(&sb, "<none>");
	FUNC6(&sb, '\n');
	FUNC3(&sb);
	FUNC2(&sb);
}
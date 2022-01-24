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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  b2 ;
typedef  int /*<<< orphan*/  b1 ;
struct TYPE_2__ {char* name; char* alias1; char* alias2; int /*<<< orphan*/  afmt; } ;

/* Variables and functions */
 int AFMT_CHANNEL_MAX ; 
 int AFMT_EXTCHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* afmt_tab ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 

uint32_t
FUNC6(const char *req)
{
	int ext;
	int ch;
	int i;
	char b1[8];
	char b2[8];

	FUNC1(b1, 0, sizeof(b1));
	FUNC1(b2, 0, sizeof(b2));

	i = FUNC2(req, "%5[^:]:%6s", b1, b2);

	if (i == 1) {
		if (FUNC5(req) != FUNC5(b1))
			return (0);
		FUNC4(b2, "2.0", sizeof(b2));
	} else if (i == 2) {
		if (FUNC5(req) != (FUNC5(b1) + 1 + FUNC5(b2)))
			return (0);
	} else
		return (0);

	i = FUNC2(b2, "%d.%d", &ch, &ext);

	if (i == 0) {
		if (FUNC3(b2, "mono") == 0) {
			ch = 1;
			ext = 0;
		} else if (FUNC3(b2, "stereo") == 0) {
			ch = 2;
			ext = 0;
		} else if (FUNC3(b2, "quad") == 0) {
			ch = 4;
			ext = 0;
		} else
			return (0);
	} else if (i == 1) {
		if (ch < 1 || ch > AFMT_CHANNEL_MAX)
			return (0);
		ext = 0;
	} else if (i == 2) {
		if (ext < 0 || ext > AFMT_EXTCHANNEL_MAX)
			return (0);
		if (ch < 1 || (ch + ext) > AFMT_CHANNEL_MAX)
			return (0);
	} else
		return (0);

	for (i = 0; afmt_tab[i].name != NULL; i++) {
		if (FUNC3(afmt_tab[i].name, b1) != 0) {
			if (afmt_tab[i].alias1 == NULL)
				continue;
			if (FUNC3(afmt_tab[i].alias1, b1) != 0) {
				if (afmt_tab[i].alias2 == NULL)
					continue;
				if (FUNC3(afmt_tab[i].alias2, b1) != 0)
					continue;
			}
		}
		/* found a match */
		return (FUNC0(afmt_tab[i].afmt, ch + ext, ext));	
	}
	/* not a valid format */
	return (0);
}
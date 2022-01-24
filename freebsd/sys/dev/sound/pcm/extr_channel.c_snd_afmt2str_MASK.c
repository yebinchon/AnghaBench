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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {char* name; scalar_t__ afmt; } ;

/* Variables and functions */
 size_t AFMTSTR_LEN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_1__* afmt_tab ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,char*,scalar_t__,scalar_t__) ; 

uint32_t
FUNC6(uint32_t afmt, char *buf, size_t len)
{
	uint32_t enc;
	uint32_t ext;
	uint32_t ch;
	int i;

	if (buf == NULL || len < AFMTSTR_LEN)
		return (0);

	FUNC4(buf, 0, len);

	enc = FUNC1(afmt);
	ch = FUNC0(afmt);
	ext = FUNC2(afmt);
	/* check there is at least one channel */
	if (ch <= ext)
		return (0);
	for (i = 0; afmt_tab[i].name != NULL; i++) {
		if (enc != afmt_tab[i].afmt)
			continue;
		/* found a match */
		FUNC5(buf, len, "%s:%d.%d",
		    afmt_tab[i].name, ch - ext, ext);
		return (FUNC3(enc, ch, ext));
	}
	return (0);
}
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
struct keyent_t {int spcl; int* map; int flgs; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int NUM_STATES ; 
 int SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ hex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(FILE *fp, int scancode, struct keyent_t *key)
{
	int i;

	/* print scancode number */
	if (hex)
		FUNC0(fp, " 0x%02x  ", scancode);
	else
		FUNC0(fp, "  %03d  ", scancode);

	/* print key definitions */
	for (i=0; i<NUM_STATES; i++) {
		if (key->spcl & (0x80 >> i))
			FUNC1(fp, key->map[i] | SPECIAL);
		else
			FUNC1(fp, key->map[i]);
	}

	/* print lock state key def */
	switch (key->flgs) {
	case 0:
		FUNC0(fp, "  O\n");
		break;
	case 1:
		FUNC0(fp, "  C\n");
		break;
	case 2:
		FUNC0(fp, "  N\n");
		break;
	case 3:
		FUNC0(fp, "  B\n");
		break;
	}
}
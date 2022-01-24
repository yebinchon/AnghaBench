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
typedef  unsigned int uint16_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(const char *file, uint16_t *buf)
{
	unsigned int r[8];
	FILE *fp;
	char b[1024];
	int i;

	fp = FUNC4(file, "r");
	if (!fp)
		FUNC0(1, "fopen");

	while (!FUNC2(fp)) {
		if (FUNC3(b, 1024, fp) == NULL)
			break;
		if (FUNC2(fp))
			break;
		if (FUNC6(b) > 0)
			b[FUNC6(b)-1] = '\0';
		if (FUNC6(b) == 0)
			break;
		FUNC5(b, "%x: %x %x %x %x %x %x %x %x\n",
		    &i, &r[0], &r[1], &r[2], &r[3], &r[4],
		    &r[5], &r[6], &r[7]);
		buf[i++] = r[0];
		buf[i++] = r[1];
		buf[i++] = r[2];
		buf[i++] = r[3];
		buf[i++] = r[4];
		buf[i++] = r[5];
		buf[i++] = r[6];
		buf[i++] = r[7];
	}
	FUNC1(fp);
}
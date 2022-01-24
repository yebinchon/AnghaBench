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
typedef  int u_char ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  CIS_FEAT_MEM_ADDR 131 
#define  CIS_FEAT_MEM_LEN 130 
#define  CIS_FEAT_MEM_NONE 129 
#define  CIS_FEAT_MEM_WIN 128 
 int FUNC1 (int) ; 
 int CIS_MEM_HOST ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int FUNC7 (int*) ; 

__attribute__((used)) static u_char *
FUNC8(u_char feat, u_char *p, u_char *q)
{
	int i, j;
	u_char c;

	switch (FUNC0(feat)) {

	case CIS_FEAT_MEM_NONE:	/* No memory block */
		break;
	case CIS_FEAT_MEM_LEN:	/* Specify memory length */
		if (q - p < 2)
			goto err;
		FUNC5("\tMemory space length = 0x%x\n", FUNC7(p));
		p += 2;
		break;
	case CIS_FEAT_MEM_ADDR:	/* Memory address and length */
		if (q - p < 4)
			goto err;
		FUNC5("\tMemory space address = 0x%x, length = 0x%x\n",
		       FUNC7(p + 2), FUNC7(p));
		p += 4;
		break;
	case CIS_FEAT_MEM_WIN:	/* Memory descriptors. */
		if (q <= p)
			goto err;
		c = *p++;
		/* calculate byte length */
		j = FUNC2(c) + FUNC1(c);
		if (c & CIS_MEM_HOST)
			j += FUNC1(c);
		/* number of memory block */
		for (i = 0; i < FUNC3(c); i++) {
			if (q - p < j)
				goto err;
			FUNC5("\tMemory descriptor %d\n\t\t", i + 1);
			/* memory length */
			p += FUNC4(FUNC2(c) | 0x10,
				       " blk length = 0x%x00", p, 0);
			/* card address */
			p += FUNC4(FUNC1(c) | 0x10,
				       " card addr = 0x%x00", p, 0);
			if (c & CIS_MEM_HOST) /* Host address value exist */
				p += FUNC4(FUNC1(c) | 0x10,
					       " host addr = 0x%x00", p, 0);
			FUNC6('\n');
		}
		break;
	}
	return p;

 err:	/* warning */
	FUNC5("\tWrong length for memory mapping sub-tuple\n");
	return p;
}
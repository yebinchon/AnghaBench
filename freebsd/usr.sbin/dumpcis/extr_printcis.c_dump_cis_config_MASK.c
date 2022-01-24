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
struct tuple {int* data; int length; scalar_t__ code; } ;

/* Variables and functions */
 scalar_t__ CIS_CONFIG ; 
 int CIS_FEAT_IRQ ; 
 int CIS_FEAT_I_O ; 
 scalar_t__ FUNC0 (int) ; 
 int CIS_FEAT_MISC ; 
 int FUNC1 (int) ; 
 int CIS_FEAT_TIMING ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int* FUNC6 (int*,int*) ; 
 int* FUNC7 (int*,int*) ; 
 int* FUNC8 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 

__attribute__((used)) static void
FUNC12(struct tuple *tp)
{
	u_char *p, *q, feat;
	int     i, j;
	char    c;

	p = tp->data;
	q = p + tp->length;
	FUNC10("\tConfig index = 0x%x%s\n", *p & 0x3F,
	       *p & 0x40 ? "(default)" : "");

	/* Interface byte exists */
	if (tp->code == CIS_CONFIG && (*p & 0x80)) {
		p++;
		FUNC10("\tInterface byte = 0x%x ", *p);
		switch (*p & 0xF) { /* Interface type */
		default:
			FUNC10("(reserved)");
			break;
		case 0:
			FUNC10("(memory)");
			break;
		case 1:
			FUNC10("(I/O)");
			break;
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
			FUNC10("(custom)");
			break;
		}
		c = ' ';
		if (*p & 0x10) { /* Battery voltage detect */
			FUNC10(" BVD1/2 active");
			c = ',';
		}
		if (*p & 0x20) { /* Write protect active */
			FUNC10("%c card WP active", c);	/* Write protect */
			c = ',';
		}
		if (*p & 0x40) { /* RdyBsy active bit */
			FUNC10("%c +RDY/-BSY active", c);
			c = ',';
		}
		if (*p & 0x80)	/* Wait signal required */
			FUNC10("%c wait signal supported", c);
		FUNC10("\n");
	}

	/* features byte */
	p++;
	feat = *p++;

	/* Power structure sub-tuple */
	switch (FUNC1(feat)) {	/* Power sub-tuple(s) exists */
	case 0:
		break;
	case 1:
		FUNC10("\tVcc pwr:\n");
		p += FUNC9(p);
		break;
	case 2:
		FUNC10("\tVcc pwr:\n");
		p += FUNC9(p);
		FUNC10("\tVpp pwr:\n");
		p += FUNC9(p);
		break;
	case 3:
		FUNC10("\tVcc pwr:\n");
		p += FUNC9(p);
		FUNC10("\tVpp1 pwr:\n");
		p += FUNC9(p);
		FUNC10("\tVpp2 pwr:\n");
		p += FUNC9(p);
		break;
	}

	/* Timing sub-tuple */
	if (tp->code == CIS_CONFIG &&
	    (feat & CIS_FEAT_TIMING)) {	/* Timing sub-tuple exists */
		i = *p++;
		j = FUNC4(i);
		if (j != 3) {
			FUNC10("\tWait scale ");
			FUNC5(*p++, j);
			FUNC10("\n");
		}
		j = FUNC2(i);
		if (j != 7) {
			FUNC10("\tRDY/BSY scale ");
			FUNC5(*p++, j);
			FUNC10("\n");
		}
		j = FUNC3(i);
		if (j != 7) {
			FUNC10("\tExternal scale ");
			FUNC5(*p++, j);
			FUNC10("\n");
		}
	}

	/* I/O mapping sub-tuple */
	if (feat & CIS_FEAT_I_O) { /* I/O space sub-tuple exists */
		if (tp->code == CIS_CONFIG)
			p = FUNC6(p, q);
		else {		/* CIS_CONFIG_CB */
			FUNC10("\tI/O base:");
			for (i = 0; i < 8; i++)
				if (*p & (1 << i))
					FUNC10(" %d", i);
			FUNC11('\n');
			p++;
		}
	}

	/* IRQ descriptor sub-tuple */
	if (feat & CIS_FEAT_IRQ) /* IRQ sub-tuple exists */
		p = FUNC7(p, q);

	/* Memory map sub-tuple */
	if (FUNC0(feat)) { /* Memory space sub-tuple(s) exists */
		if (tp->code == CIS_CONFIG)
			p = FUNC8(feat, p, q);
		else {		/* CIS_CONFIG_CB */
			FUNC10("\tMemory base:");
			for (i = 0; i < 8; i++)
				if (*p & (1 << i))
					FUNC10(" %d", i);
			FUNC11('\n');
			p++;
		}
	}

	/* Misc sub-tuple */
	if (feat & CIS_FEAT_MISC) { /* Miscellaneous sub-tuple exists */
		if (tp->code == CIS_CONFIG) {
			FUNC10("\tMax twin cards = %d\n", *p & 7);
			FUNC10("\tMisc attr:%s%s%s",
			       (*p & 8) ? " (Audio-BVD2)" : "",
			       (*p & 0x10) ? " (Read-only)" : "",
			       (*p & 0x20) ? " (Power down supported)" : "");
			if (*p++ & 0x80) {
				FUNC10(" (Ext byte = 0x%x)", *p);
				p++;
			}
			FUNC11('\n');
		}
		else {		/* CIS_CONFIG_CB */
			FUNC10("\tMisc attr:");
			FUNC10("%s%s%s%s%s%s%s",
			       (*p & 1) ? " (Master)" : "",
			       (*p & 2) ? " (Invalidate)" : "",
			       (*p & 4) ? " (VGA palette)" : "",
			       (*p & 8) ? " (Parity)" : "",
			       (*p & 0x10) ? " (Wait)" : "",
			       (*p & 0x20) ? " (Serr)" : "",
			       (*p & 0x40) ? " (Fast back)" : "");
			if (*p++ & 0x80) {
				FUNC10("%s%s",
				       (*p & 1) ? " (Binary audio)" : "",
				       (*p & 2) ? " (pwm audio)" : "");
				p++;
			}
			FUNC11('\n');
		}
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int v_type; int /*<<< orphan*/  v_value; scalar_t__ v_name; } ;
typedef  TYPE_1__ value_t ;

/* Variables and functions */
#define  BOOL 131 
#define  CHAR 130 
#define  NUMBER 129 
#define  STRING 128 
 int TMASK ; 
 int /*<<< orphan*/  VIS_WHITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* vtable ; 

void
FUNC14(int c)
{
	value_t *p;
	char *buf;
	char charbuf[5];	/* for vis(3), 4 chars for encoding, plus nul */

	FUNC10("v\r");
	for (p = vtable; p->v_name; p++) {
		FUNC4(p->v_name, stdout);
		switch (p->v_type&TMASK) {
		case STRING:
			if (p->v_value) {
				buf = FUNC6(4*FUNC11(p->v_value) + 1);
				if (buf == NULL) {
					FUNC3(stderr, "Unable to malloc()\n");
					FUNC0();
				}
				FUNC12(buf, p->v_value, VIS_WHITE);
				FUNC8(" %s", buf);
				FUNC5(buf);
			}
			FUNC9('\r');
			FUNC9('\n');
			break;
		case NUMBER:
			FUNC8(" %ld\r\n", FUNC7(p->v_value));
			break;
		case BOOL:
			FUNC8(" %s\r\n",
			    !FUNC1(p->v_value) ? "false" : "true");
			break;
		case CHAR:
			FUNC13(charbuf, FUNC2(p->v_value), VIS_WHITE, 0);
			FUNC8(" %s\r\n", charbuf);
			break;
		}
	}
}
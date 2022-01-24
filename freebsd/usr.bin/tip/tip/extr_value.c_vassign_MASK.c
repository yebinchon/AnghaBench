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
struct TYPE_3__ {int v_type; char* v_value; int /*<<< orphan*/  v_access; } ;
typedef  TYPE_1__ value_t ;

/* Variables and functions */
#define  BOOL 131 
 int /*<<< orphan*/  CHANGED ; 
#define  CHAR 130 
 int ENVIRON ; 
 int INIT ; 
 char* NOSTR ; 
#define  NUMBER 129 
#define  STRING 128 
 int TMASK ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC0 (char*) ; 
 char FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(value_t *p, char *v)
{
	if (!FUNC10(p->v_access, WRITE)) {
		FUNC5("access denied\r\n");
		return;
	}

	switch (p->v_type&TMASK) {
	case STRING:
		if (p->v_value && FUNC2(p->v_value, v))
			return;
		if (!(p->v_type&(ENVIRON|INIT)))
			FUNC3(p->v_value);
		if ((p->v_value = FUNC9(v)) == NOSTR) {
			FUNC5("out of core\r\n");
			return;
		}
		p->v_type &= ~(ENVIRON|INIT);
		break;
	case NUMBER:
		if (FUNC4(p->v_value) == FUNC4(v))
			return;
		FUNC8(p->v_value, FUNC4(v));
		break;
	case BOOL:
		if (FUNC0(p->v_value) == (*v != '!'))
			return;
		FUNC6(p->v_value, (*v != '!'));
		break;
	case CHAR:
		if (FUNC1(p->v_value) == *v)
			return;
		FUNC7(p->v_value, *v);
	}
	p->v_access |= CHANGED;
}
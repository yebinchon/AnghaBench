#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  pos ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ str_numstr; } ;
typedef  TYPE_1__ STRFILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  Dataf ; 
 int Delimch ; 
 int /*<<< orphan*/  Inf ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (char*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC7(STRFILE *tbl)
{
	uint32_t i;
	char *sp;
	off_t pos;
	char buf[BUFSIZ];

	for (i = 0; i < tbl->str_numstr; i++) {
		FUNC4(&pos, 1, sizeof(pos), Dataf);
		FUNC5(Inf, FUNC1(pos), SEEK_SET);
		if (i != 0)
			FUNC6("%c\n", Delimch);
		for (;;) {
			sp = FUNC2(buf, sizeof(buf), Inf);
			if (sp == NULL || FUNC0(sp, *tbl))
				break;
			else
				FUNC3(sp, stdout);
		}
	}
}
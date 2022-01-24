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
typedef  int /*<<< orphan*/  uint8_t ;
struct blockif_elem {int dummy; } ;
struct blockif_ctxt {int /*<<< orphan*/  bc_mtx; int /*<<< orphan*/  bc_cond; scalar_t__ bc_closing; scalar_t__ bc_isgeom; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  FUNC0 (struct blockif_ctxt*,struct blockif_elem*) ; 
 scalar_t__ FUNC1 (struct blockif_ctxt*,int /*<<< orphan*/ ,struct blockif_elem**) ; 
 int /*<<< orphan*/  FUNC2 (struct blockif_ctxt*,struct blockif_elem*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void *
FUNC10(void *arg)
{
	struct blockif_ctxt *bc;
	struct blockif_elem *be;
	pthread_t t;
	uint8_t *buf;

	bc = arg;
	if (bc->bc_isgeom)
		buf = FUNC4(MAXPHYS);
	else
		buf = NULL;
	t = FUNC9();

	FUNC7(&bc->bc_mtx);
	for (;;) {
		while (FUNC1(bc, t, &be)) {
			FUNC8(&bc->bc_mtx);
			FUNC2(bc, be, buf);
			FUNC7(&bc->bc_mtx);
			FUNC0(bc, be);
		}
		/* Check ctxt status here to see if exit requested */
		if (bc->bc_closing)
			break;
		FUNC5(&bc->bc_cond, &bc->bc_mtx);
	}
	FUNC8(&bc->bc_mtx);

	if (buf)
		FUNC3(buf);
	FUNC6(NULL);
	return (NULL);
}
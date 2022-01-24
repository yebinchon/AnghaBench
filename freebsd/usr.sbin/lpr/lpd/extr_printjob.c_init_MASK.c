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
struct printer {int /*<<< orphan*/  page_plength; int /*<<< orphan*/  page_pwidth; int /*<<< orphan*/  page_length; int /*<<< orphan*/  page_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 char* FUNC0 (struct printer*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * length ; 
 int /*<<< orphan*/ * pxlength ; 
 int /*<<< orphan*/ * pxwidth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * width ; 

__attribute__((used)) static void
FUNC4(struct printer *pp)
{
	char *s;

	FUNC2(&width[2], "%ld", pp->page_width);
	FUNC2(&length[2], "%ld", pp->page_length);
	FUNC2(&pxwidth[2], "%ld", pp->page_pwidth);
	FUNC2(&pxlength[2], "%ld", pp->page_plength);
	if ((s = FUNC0(pp)) != NULL) {
		FUNC3(LOG_WARNING, "%s", s);
		FUNC1(s);
	}
}
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
struct ber_element {int dummy; } ;
struct ber {int fd; int /*<<< orphan*/ * br_wbuf; int /*<<< orphan*/ * br_wptr; int /*<<< orphan*/  br_wend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t FUNC1 (struct ber_element*) ; 
 int FUNC2 (struct ber*,struct ber_element*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,size_t) ; 

int
FUNC6(struct ber *ber, struct ber_element *root)
{
	size_t len;

	/* calculate length because only the definite form is required */
	len = FUNC1(root);
	FUNC0("write ber element of %zd bytes length\n", len);

	if (ber->br_wbuf != NULL && ber->br_wbuf + len > ber->br_wend) {
		FUNC3(ber->br_wbuf);
		ber->br_wbuf = NULL;
	}
	if (ber->br_wbuf == NULL) {
		if ((ber->br_wbuf = FUNC4(len)) == NULL)
			return -1;
		ber->br_wend = *(ber->br_wbuf + len);
	}

	/* reset write pointer */
	ber->br_wptr = ber->br_wbuf;

	if (FUNC2(ber, root) == -1)
		return -1;

	/* XXX this should be moved to a different function */
	if (ber->fd != -1)
		return FUNC5(ber->fd, ber->br_wbuf, len);

	return (len);
}
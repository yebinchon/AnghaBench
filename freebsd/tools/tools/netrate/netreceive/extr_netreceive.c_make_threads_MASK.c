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
struct td_desc {int fd; int buflen; int /*<<< orphan*/  td_id; void* buf; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct td_desc*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  rx_body ; 

__attribute__((used)) static struct td_desc **
FUNC6(int *s, int nsock, int nthreads)
{
	int i, si, nt = nsock * nthreads;
	int lb = FUNC5(nt * sizeof (struct td_desc *), 64);
	int td_len = FUNC5(sizeof(struct td_desc), 64); // cache align
	char *m = FUNC0(1, lb + td_len * nt);
	struct td_desc **tp;

	FUNC3("td len %d -> %d\n", (int)sizeof(struct td_desc) , td_len);
	/* pointers plus the structs */
	if (m == NULL) {
		FUNC2("no room for pointers!");
		FUNC1(1);
	}
	tp = (struct td_desc **)m;
	m += lb;	/* skip the pointers */
	for (si = i = 0; i < nt; i++, m += td_len) {
		tp[i] = (struct td_desc *)m;
		tp[i]->fd = s[si];
		tp[i]->buflen = 65536;
		tp[i]->buf = FUNC0(1, tp[i]->buflen);
		if (++si == nsock)
			si = 0;
		if (FUNC4(&tp[i]->td_id, NULL, rx_body, tp[i])) {
			FUNC2("unable to create thread");
			FUNC1(1);
		}
	}
	return tp;
}
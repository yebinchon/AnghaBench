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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int __register_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  boothowto ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char**,char*) ; 
 int xlp_hw_thread_mask ; 

__attribute__((used)) static void
FUNC8(__register_t arg)
{
	char	buf[2048]; /* early stack is big enough */
	char	*p, *v, *n;
	uint32_t mask;

	/*
	 * provide backward compat for passing cpu mask as arg
	 */
	if (arg & 1) {
		xlp_hw_thread_mask = arg;
		return;
	}

	p = (void *)(intptr_t)arg;
	while (*p != '\0') {
		FUNC5(buf, p, sizeof(buf));
		v = buf;
		n = FUNC7(&v, "=");
		if (v == NULL)
			FUNC4(n, "1");
		else
			FUNC4(n, v);
		p += FUNC6(p) + 1;
	}

	/* CPU mask can be passed thru env */
	if (FUNC2("cpumask", &mask) != 0)
		xlp_hw_thread_mask = mask;

	/* command line argument */
	v = FUNC3("bootargs");
	if (v != NULL) {
		FUNC5(buf, v, sizeof(buf));
		boothowto |= FUNC0(buf);
		FUNC1(v);
	}
}
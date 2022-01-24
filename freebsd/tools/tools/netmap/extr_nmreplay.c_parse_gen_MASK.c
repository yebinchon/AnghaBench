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
struct _sm {double m; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 double FUNC3 (char const*,char**) ; 

__attribute__((used)) static double
FUNC4(const char *arg, const struct _sm *conv, int *err)
{
	double d;
	char *ep;
	int dummy;

	if (err == NULL)
		err = &dummy;
	*err = 0;
	if (arg == NULL)
		goto error;
	d = FUNC3(arg, &ep);
	if (ep == arg) { /* no value */
		FUNC0("bad argument %s", arg);
		goto error;
	}
	/* special case, no conversion */
	if (conv == NULL && *ep == '\0')
		goto done;
	FUNC1("checking %s [%s]", arg, ep);
	for (;conv->s; conv++) {
		if (FUNC2(conv->s, *ep))
			goto done;
	}
error:
	*err = 1;	/* unrecognised */
	return 0;

done:
	if (conv) {
		FUNC1("scale is %s %lf", conv->s, conv->m);
		d *= conv->m; /* apply default conversion */
	}
	FUNC1("returning %lf", d);
	return d;
}
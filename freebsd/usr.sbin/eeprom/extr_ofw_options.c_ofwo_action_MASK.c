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
struct ofwo_extabent {char const* ex_prop; int (* ex_handler ) (struct ofwo_extabent const*,int,void*,int,char const*) ;} ;

/* Variables and functions */
 int EX_OK ; 
 int EX_UNAVAILABLE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,char const*,void**,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ofwo_extabent* ofwo_extab ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 int FUNC6 (int,void*,int,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 int FUNC8 (struct ofwo_extabent const*,int,void*,int,char const*) ; 

int
FUNC9(const char *prop, const char *val)
{
	void *pbuf;
	int fd, len, pblen, rv;
	const struct ofwo_extabent *ex;

	pblen = 0;
	rv = EX_OK;
	pbuf = NULL;
	if (FUNC7(prop, "name") == 0)
		return (EX_UNAVAILABLE);
	if (val)
		fd = FUNC3(O_RDWR);
	else
		fd = FUNC3(O_RDONLY);
	len = FUNC2(fd, FUNC4(fd), prop, &pbuf, &pblen, 1);
	if (len < 0) {
		rv = EX_UNAVAILABLE;
		goto out;
	}
	for (ex = ofwo_extab; ex->ex_prop != NULL; ++ex)
		if (FUNC7(ex->ex_prop, prop) == 0)
			break;
	if (ex->ex_prop != NULL)
		rv = (*ex->ex_handler)(ex, fd, pbuf, len, val);
	else if (val)
		rv = FUNC6(fd, pbuf, len, prop, val);
	else
		FUNC5(prop, (char *)pbuf, len);
out:
	if (pbuf != NULL)
		FUNC0(pbuf);
	FUNC1(fd);
	return (rv);
}
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
struct ofwo_extabent {char* ex_prop; int /*<<< orphan*/  (* ex_handler ) (struct ofwo_extabent const*,int,void*,int,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  OFWO_MAXPROP ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,char*,void**,int*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct ofwo_extabent* ofwo_extab ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ofwo_extabent const*,int,void*,int,int /*<<< orphan*/ *) ; 

void
FUNC10(void)
{
	void *pbuf;
	int fd, len, nlen, pblen;
	phandle_t optnode;
	char prop[OFWO_MAXPROP + 1];
	const struct ofwo_extabent *ex;

	pblen = 0;
	pbuf = NULL;
	fd = FUNC5(O_RDONLY);
	optnode = FUNC6(fd);
	for (nlen = FUNC2(fd, optnode, prop, sizeof(prop)); nlen != 0;
	    nlen = FUNC4(fd, optnode, prop, prop, sizeof(prop))) {
		len = FUNC3(fd, optnode, prop, &pbuf, &pblen, 1);
		if (len < 0)
			continue;
		if (FUNC8(prop, "name") == 0)
			continue;
		for (ex = ofwo_extab; ex->ex_prop != NULL; ++ex)
			if (FUNC8(ex->ex_prop, prop) == 0)
				break;
		if (ex->ex_prop != NULL)
			(*ex->ex_handler)(ex, fd, pbuf, len, NULL);
		else
			FUNC7(prop, (char *)pbuf, len);
	}
	if (pbuf != NULL)
		FUNC0(pbuf);
	FUNC1(fd);
}
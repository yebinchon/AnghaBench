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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(const char *udevname, char *msgdev, char *datadev)
{
	char *bn, *bnbuf, *dn, *dnbuf;

	dnbuf = FUNC4(udevname);
	if (dnbuf == NULL)
		return (-1);
	dn = FUNC1(dnbuf);
	bnbuf = FUNC4(udevname);
	if (bnbuf == NULL) {
		FUNC2(dnbuf);
		return (-1);
	}
	bn = FUNC0(bnbuf);
	if (FUNC5(bn, "ugen", 4) != 0) {
		FUNC2(dnbuf);
		FUNC2(bnbuf);
		return (-1);
	}
	bn += 4;

	/* NB: pipes are hardcoded */
	FUNC3(msgdev, 256, "%s/usb/%s.1", dn, bn);
	FUNC3(datadev, 256, "%s/usb/%s.2", dn, bn);
	FUNC2(dnbuf);
	FUNC2(bnbuf);
	return (0);
}
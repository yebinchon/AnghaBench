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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*,char const*) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	const char *vendorstr, *prodstr;
	uint32_t vendor, prod;
	char *str;

	if (FUNC6(dev, &vendorstr))
		return (0);
	if (FUNC4(dev, &prodstr))
		return (0);
	if (vendorstr != NULL && prodstr != NULL) {
		str = FUNC2(FUNC9(vendorstr) + FUNC9(prodstr) + 2, M_DEVBUF,
		    M_WAITOK);
		FUNC8(str, "%s %s", vendorstr, prodstr);
		FUNC0(dev, str);
		FUNC1(str, M_DEVBUF);
	} else {
		if (FUNC5(dev, &vendor))
			return (0);
		if (FUNC3(dev, &prod))
			return (0);
		str = FUNC2(100, M_DEVBUF, M_WAITOK);
		FUNC7(str, 100, "vendor=%#x product=%#x", vendor, prod);
		FUNC0(dev, str);
		FUNC1(str, M_DEVBUF);
	}
	return (0);
}
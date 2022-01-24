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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  ofw_t ;
typedef  int /*<<< orphan*/  cpuid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__,int,int*) ; 
 void* FUNC4 (scalar_t__,int,char const*,int*) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ fdtp ; 
 int /*<<< orphan*/  FUNC9 (int,size_t) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (void*,char const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC12(ofw_t ofw, phandle_t package, const char *propname, void *buf,
    size_t buflen)
{
	const void *prop;
	const char *name;
	int len, offset;
	uint32_t cpuid;

	offset = FUNC8(package);
	if (offset < 0)
		return (-1);

	prop = FUNC4(fdtp, offset, propname, &len);

	if (prop == NULL && FUNC10(propname, "name") == 0) {
		/* Emulate the 'name' property */
		name = FUNC3(fdtp, offset, &len);
		FUNC11(buf, name, buflen);
		return (len + 1);
	}

	if (prop == NULL && offset == FUNC7(fdtp, "/chosen")) {
		if (FUNC10(propname, "fdtbootcpu") == 0) {
			cpuid = FUNC1(FUNC2(fdtp));
			len = sizeof(cpuid);
			prop = &cpuid;
		}
		if (FUNC10(propname, "fdtmemreserv") == 0) {
			prop = (char *)fdtp + FUNC6(fdtp);
			len = sizeof(uint64_t)*2*FUNC5(fdtp);
		}
	}

	if (prop == NULL)
		return (-1);

	FUNC0(prop, buf, FUNC9(len, buflen));

	return (len);
}
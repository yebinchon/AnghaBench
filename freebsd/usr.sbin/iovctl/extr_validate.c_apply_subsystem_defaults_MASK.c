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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
#define  NV_TYPE_BINARY 132 
#define  NV_TYPE_BOOL 131 
#define  NV_TYPE_NUMBER 130 
#define  NV_TYPE_NVLIST 129 
#define  NV_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC7 (int /*<<< orphan*/  const*,char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/  const*,int*,void**) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC15(nvlist_t *device_config, const char *subsystem,
    const nvlist_t *device_defaults)
{
	nvlist_t *config;
	const nvlist_t *defaults;
	const char *name;
	void *cookie;
	size_t len;
	const void *bin;
	int type;

	config = FUNC14(device_config, subsystem);
	defaults = FUNC10(device_defaults, subsystem);

	cookie = NULL;
	while ((name = FUNC13(defaults, &type, &cookie)) != NULL) {
		if (FUNC6(config, name))
			continue;

		switch (type) {
		case NV_TYPE_BOOL:
			FUNC2(config, name,
			    FUNC8(defaults, name));
			break;
		case NV_TYPE_NUMBER:
			FUNC3(config, name,
			    FUNC9(defaults, name));
			break;
		case NV_TYPE_STRING:
			FUNC5(config, name,
			    FUNC11(defaults, name));
			break;
		case NV_TYPE_NVLIST:
			FUNC4(config, name,
			    FUNC10(defaults, name));
			break;
		case NV_TYPE_BINARY:
			bin = FUNC7(defaults, name, &len);
			FUNC1(config, name, bin, len);
			break;
		default:
			FUNC0(1, "Unexpected type '%d'", type);
		}
	}
	FUNC12(device_config, subsystem, config);
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC10 (int /*<<< orphan*/  const*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16(const nvlist_t *param_schema, const char *name,
    nvlist_t *config)
{
	const void *binary;
	size_t len;

	if (FUNC5(param_schema, "default")) {
		binary = FUNC10(param_schema, "default", &len);
		FUNC0(config, name, binary, len);
	} else if (FUNC6(param_schema, "default"))
		FUNC1(config, name,
		    FUNC11(param_schema, "default"));
	else if (FUNC7(param_schema, "default"))
		FUNC2(config, name,
		    FUNC12(param_schema, "default"));
	else if (FUNC8(param_schema, "default"))
		FUNC3(config, name,
		    FUNC13(param_schema, "default"));
	else if (FUNC9(param_schema, "default"))
		FUNC4(config, name,
		    FUNC14(param_schema, "default"));
	else
		FUNC15("Unexpected nvlist type");
}
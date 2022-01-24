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
 int RECURSE_SUBMODULES_OFF ; 
 int RECURSE_SUBMODULES_ON_DEMAND ; 
 int /*<<< orphan*/  SEND_PACK_PUSH_CERT_ALWAYS ; 
 int /*<<< orphan*/  SEND_PACK_PUSH_CERT_IF_ASKED ; 
 int /*<<< orphan*/  SEND_PACK_PUSH_CERT_NEVER ; 
 int TRANSPORT_PUSH_FOLLOW_TAGS ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const**) ; 
 int FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 int FUNC10 (char const*,char const*) ; 
 int /*<<< orphan*/ * push_colors ; 
 int /*<<< orphan*/  push_options_config ; 
 int /*<<< orphan*/  push_use_color ; 
 int recurse_submodules ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(const char *k, const char *v, void *cb)
{
	const char *slot_name;
	int *flags = cb;
	int status;

	status = FUNC7(k, v, NULL);
	if (status)
		return status;

	if (!FUNC14(k, "push.followtags")) {
		if (FUNC3(k, v))
			*flags |= TRANSPORT_PUSH_FOLLOW_TAGS;
		else
			*flags &= ~TRANSPORT_PUSH_FOLLOW_TAGS;
		return 0;
	} else if (!FUNC14(k, "push.gpgsign")) {
		const char *value;
		if (!FUNC5("push.gpgsign", &value)) {
			switch (FUNC8(value)) {
			case 0:
				FUNC11(flags, SEND_PACK_PUSH_CERT_NEVER);
				break;
			case 1:
				FUNC11(flags, SEND_PACK_PUSH_CERT_ALWAYS);
				break;
			default:
				if (value && !FUNC13(value, "if-asked"))
					FUNC11(flags, SEND_PACK_PUSH_CERT_IF_ASKED);
				else
					return FUNC2("Invalid value for '%s'", k);
			}
		}
	} else if (!FUNC14(k, "push.recursesubmodules")) {
		const char *value;
		if (!FUNC5("push.recursesubmodules", &value))
			recurse_submodules = FUNC10(k, value);
	} else if (!FUNC14(k, "submodule.recurse")) {
		int val = FUNC3(k, v) ?
			RECURSE_SUBMODULES_ON_DEMAND : RECURSE_SUBMODULES_OFF;
		recurse_submodules = val;
	} else if (!FUNC14(k, "push.pushoption")) {
		if (!v)
			return FUNC1(k);
		else
			if (!*v)
				FUNC16(&push_options_config, 0);
			else
				FUNC15(&push_options_config, v);
		return 0;
	} else if (!FUNC14(k, "color.push")) {
		push_use_color = FUNC4(k, v);
		return 0;
	} else if (FUNC12(k, "color.push.", &slot_name)) {
		int slot = FUNC9(slot_name);
		if (slot < 0)
			return 0;
		if (!v)
			return FUNC1(k);
		return FUNC0(v, push_colors[slot]);
	}

	return FUNC6(k, v, NULL);
}
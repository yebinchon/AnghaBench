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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ucl_object_t ;
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ UINT8_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/  const*,char*) ; 
 char* FUNC5 (char const*) ; 
 size_t FUNC6 (char const*) ; 
 char* FUNC7 (char*,char*,char**) ; 
 scalar_t__ FUNC8 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,char const**) ; 

__attribute__((used)) static void
FUNC11(const char *key, const ucl_object_t *obj, nvlist_t *config)
{
	uint8_t mac[ETHER_ADDR_LEN];
	const char *val, *token;
	char *parse, *orig_parse, *tokpos, *endpos;
	size_t len;
	u_long value;
	int i;

	if (!FUNC10(obj, &val))
		FUNC4(key, obj, "unicast-mac");

	parse = FUNC5(val);
	orig_parse = parse;

	i = 0;
	while ((token = FUNC7(parse, ":", &tokpos)) != NULL) {
		parse = NULL;

		len = FUNC6(token);
		if (len < 1 || len > 2)
			FUNC4(key, obj, "unicast-mac");

		value = FUNC8(token, &endpos, 16);

		if (*endpos != '\0')
			FUNC4(key, obj, "unicast-mac");

		if (value > UINT8_MAX)
			FUNC4(key, obj, "unicast-mac");

		if (i >= ETHER_ADDR_LEN)
			FUNC4(key, obj, "unicast-mac");

		mac[i] = value;
		i++;
	}

	FUNC2(orig_parse);

	if (i != ETHER_ADDR_LEN)
		FUNC4(key, obj, "unicast-mac");

	if (FUNC0(mac))
		FUNC1(1, "Value '%s' of key '%s' is a multicast address",
		    FUNC9(obj), key);

	FUNC3(config, key, mac, ETHER_ADDR_LEN);
}
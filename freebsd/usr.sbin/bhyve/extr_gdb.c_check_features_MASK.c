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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char**,char*) ; 

__attribute__((used)) static void
FUNC10(const uint8_t *data, size_t len)
{
	char *feature, *next_feature, *str, *value;
	bool supported;

	str = FUNC3(len + 1);
	FUNC4(str, data, len);
	str[len] = '\0';
	next_feature = str;

	while ((feature = FUNC9(&next_feature, ";")) != NULL) {
		/*
		 * Null features shouldn't exist, but skip if they
		 * do.
		 */
		if (FUNC7(feature, "") == 0)
			continue;

		/*
		 * Look for the value or supported / not supported
		 * flag.
		 */
		value = FUNC6(feature, '=');
		if (value != NULL) {
			*value = '\0';
			value++;
			supported = true;
		} else {
			value = feature + FUNC8(feature) - 1;
			switch (*value) {
			case '+':
				supported = true;
				break;
			case '-':
				supported = false;
				break;
			default:
				/*
				 * This is really a protocol error,
				 * but we just ignore malformed
				 * features for ease of
				 * implementation.
				 */
				continue;
			}
			value = NULL;
		}

		/* No currently supported features. */
	}
	FUNC2(str);

	FUNC5();

	/* This is an arbitrary limit. */
	FUNC0("PacketSize=4096");
	FUNC1();
}
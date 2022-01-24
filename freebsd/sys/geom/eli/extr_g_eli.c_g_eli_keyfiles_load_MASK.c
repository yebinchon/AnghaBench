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
typedef  int /*<<< orphan*/  u_char ;
struct hmac_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  MODINFO_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct hmac_ctx*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,...) ; 

__attribute__((used)) static int
FUNC7(struct hmac_ctx *ctx, const char *provider)
{
	u_char *keyfile, *data;
	char *file, name[64];
	size_t size;
	int i;

	for (i = 0; ; i++) {
		FUNC6(name, sizeof(name), "%s:geli_keyfile%d", provider, i);
		keyfile = FUNC4(name);
		if (keyfile == NULL && i == 0) {
			/*
			 * If there is only one keyfile, allow simpler name.
			 */
			FUNC6(name, sizeof(name), "%s:geli_keyfile", provider);
			keyfile = FUNC4(name);
		}
		if (keyfile == NULL)
			return (i);	/* Return number of loaded keyfiles. */
		data = FUNC2(keyfile);
		if (data == NULL) {
			FUNC0(0, "Cannot find key file data for %s.",
			    name);
			return (0);
		}
		size = FUNC3(keyfile);
		if (size == 0) {
			FUNC0(0, "Cannot find key file size for %s.",
			    name);
			return (0);
		}
		file = FUNC5(keyfile, MODINFO_NAME);
		if (file == NULL) {
			FUNC0(0, "Cannot find key file name for %s.",
			    name);
			return (0);
		}
		FUNC0(1, "Loaded keyfile %s for %s (type: %s).", file,
		    provider, name);
		FUNC1(ctx, data, size);
	}
}
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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,int) ; 

__attribute__((used)) static void
FUNC5(const char *provider)
{
	u_char *keyfile, *data;
	char name[64];
	size_t size;
	int i;

	for (i = 0; ; i++) {
		FUNC4(name, sizeof(name), "%s:geli_keyfile%d", provider, i);
		keyfile = FUNC3(name);
		if (keyfile == NULL)
			return;
		data = FUNC1(keyfile);
		size = FUNC2(keyfile);
		if (data != NULL && size != 0)
			FUNC0(data, size);
	}
}
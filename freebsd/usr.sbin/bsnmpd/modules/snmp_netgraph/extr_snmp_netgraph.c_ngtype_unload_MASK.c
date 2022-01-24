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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int
FUNC6(const u_char *name, size_t namelen)
{
	char *mod;
	int id;

	if ((mod = FUNC3(namelen + 4)) == NULL)
		return (-1);
	FUNC4(mod, "ng_");
	FUNC5(mod + 3, name, namelen);
	mod[namelen + 3] = '\0';

	if ((id = FUNC1(mod)) == -1) {
		FUNC0(mod);
		return (-1);
	}
	FUNC0(mod);
	return (FUNC2(id));
}
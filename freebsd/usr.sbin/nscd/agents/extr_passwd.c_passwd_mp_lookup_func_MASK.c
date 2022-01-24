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
struct passwd {int dummy; } ;

/* Variables and functions */
 int NS_NOTFOUND ; 
 int NS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int (*) (char**,size_t*,void*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (char**,size_t*,void*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC3 () ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct passwd*,char*,size_t*) ; 

__attribute__((used)) static int
FUNC6(char **buffer, size_t *buffer_size, void *mdata)
{
	struct passwd	*result;

	FUNC0(passwd_mp_lookup_func);
	result = FUNC3();
	if (result != NULL) {
		FUNC5(result, NULL, buffer_size);
		*buffer = FUNC4(*buffer_size);
		FUNC2(*buffer != NULL);
		FUNC5(result, *buffer, buffer_size);
	}

	FUNC1(passwd_mp_lookup_func);
	return (result == NULL ? NS_NOTFOUND : NS_SUCCESS);
}
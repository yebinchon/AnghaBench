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
struct group {int dummy; } ;

/* Variables and functions */
 int NS_NOTFOUND ; 
 int NS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int (*) (char**,size_t*,void*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (char**,size_t*,void*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct group* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct group*,char*,size_t*) ; 
 char* FUNC5 (size_t) ; 

__attribute__((used)) static int
FUNC6(char **buffer, size_t *buffer_size, void *mdata)
{
	struct group *result;

	FUNC0(group_mp_lookup_func);
	result = FUNC3();
	if (result != NULL) {
		FUNC4(result, NULL, buffer_size);
		*buffer = FUNC5(*buffer_size);
		FUNC2(*buffer != NULL);
		FUNC4(result, *buffer, buffer_size);
	}

	FUNC1(group_mp_lookup_func);
	return (result == NULL ? NS_NOTFOUND : NS_SUCCESS);
}
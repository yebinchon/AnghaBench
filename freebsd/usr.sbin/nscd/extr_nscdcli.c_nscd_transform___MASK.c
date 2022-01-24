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
struct nscd_connection_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CET_TRANSFORM_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nscd_transform ; 
 int FUNC2 (struct nscd_connection_*,int*,int) ; 
 int FUNC3 (struct nscd_connection_*,...) ; 
 int FUNC4 (struct nscd_connection_*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char const*) ; 

int
FUNC6(struct nscd_connection_ *connection,
	const char *entry_name, int transformation_type)
{
	size_t name_size;
	int error_code;
	int result;

	FUNC0(nscd_transform);

	error_code = -1;
	result = 0;
	result = FUNC4(connection, CET_TRANSFORM_REQUEST);
	if (result != 0)
		goto fin;

	if (entry_name != NULL)
		name_size = FUNC5(entry_name);
	else
		name_size = 0;

	result = FUNC3(connection, &name_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC3(connection, &transformation_type, sizeof(int));
	if (result != 0)
		goto fin;

	if (entry_name != NULL) {
		result = FUNC3(connection, entry_name, name_size);
		if (result != 0)
			goto fin;
	}

	result = FUNC2(connection, &error_code, sizeof(int));
	if (result != 0)
		error_code = -1;

fin:
	FUNC1(nscd_transform);
	return (error_code);
}
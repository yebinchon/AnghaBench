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
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 void* FUNC4 (struct object_id*,int*,unsigned long*) ; 
 scalar_t__ FUNC5 (int,void*,unsigned long) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 

__attribute__((used)) static char *FUNC8(struct object_id *oid)
{
	static char path[50];
	void *buf;
	enum object_type type;
	unsigned long size;
	int fd;

	buf = FUNC4(oid, &type, &size);
	if (!buf || type != OBJ_BLOB)
		FUNC1("unable to read blob object %s", FUNC3(oid));

	FUNC7(path, sizeof(path), ".merge_file_XXXXXX");
	fd = FUNC6(path);
	if (FUNC5(fd, buf, size) < 0)
		FUNC2("unable to write temp-file");
	FUNC0(fd);
	return path;
}
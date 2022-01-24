#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 unsigned int HASH_WRITE_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 scalar_t__ FUNC2 (struct object_id*,int,char const*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct object_id*,int,struct stat*,int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_1__* the_repository ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(int fd, const char *type, const char *path, unsigned flags,
		    int literally)
{
	struct stat st;
	struct object_id oid;

	if (FUNC1(fd, &st) < 0 ||
	    (literally
	     ? FUNC2(&oid, fd, type, flags)
	     : FUNC3(the_repository->index, &oid, fd, &st,
			FUNC7(type), path, flags)))
		FUNC0((flags & HASH_WRITE_OBJECT)
		    ? "Unable to add %s to database"
		    : "Unable to hash %s", path);
	FUNC6("%s\n", FUNC5(&oid));
	FUNC4(stdout, "hash to stdout");
}
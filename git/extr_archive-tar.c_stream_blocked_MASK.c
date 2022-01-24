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
struct git_istream {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct git_istream*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 struct git_istream* FUNC6 (struct object_id const*,int*,unsigned long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct git_istream*,char*,int) ; 

__attribute__((used)) static int FUNC8(const struct object_id *oid)
{
	struct git_istream *st;
	enum object_type type;
	unsigned long sz;
	char buf[BLOCKSIZE];
	ssize_t readlen;

	st = FUNC6(oid, &type, &sz, NULL);
	if (!st)
		return FUNC3(FUNC0("cannot stream blob %s"), FUNC5(oid));
	for (;;) {
		readlen = FUNC7(st, buf, sizeof(buf));
		if (readlen <= 0)
			break;
		FUNC2(buf, readlen);
	}
	FUNC1(st);
	if (!readlen)
		FUNC4();
	return readlen;
}
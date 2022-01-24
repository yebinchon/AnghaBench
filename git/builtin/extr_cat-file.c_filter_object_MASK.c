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
struct strbuf {unsigned long len; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,char*,unsigned long,struct strbuf*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 char* FUNC6 (struct object_id const*,int*,unsigned long*) ; 
 char* FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC8(const char *path, unsigned mode,
			 const struct object_id *oid,
			 char **buf, unsigned long *size)
{
	enum object_type type;

	*buf = FUNC6(oid, &type, size);
	if (!*buf)
		return FUNC3(FUNC1("cannot read object %s '%s'"),
			     FUNC5(oid), path);
	if ((type == OBJ_BLOB) && FUNC0(mode)) {
		struct strbuf strbuf = STRBUF_INIT;
		if (FUNC2(&the_index, path, *buf, *size, &strbuf)) {
			FUNC4(*buf);
			*size = strbuf.len;
			*buf = FUNC7(&strbuf, NULL);
		}
	}

	return 0;
}
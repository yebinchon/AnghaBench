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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;
struct archiver_args {TYPE_1__* repo; int /*<<< orphan*/  baselen; struct commit* commit; scalar_t__ convert; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 void* FUNC3 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,void*,unsigned long,unsigned long) ; 
 void* FUNC5 (struct strbuf*,size_t*) ; 

void *FUNC6(const struct archiver_args *args,
			     const char *path, const struct object_id *oid,
			     unsigned int mode, enum object_type *type,
			     unsigned long *sizep)
{
	void *buffer;
	const struct commit *commit = args->convert ? args->commit : NULL;

	path += args->baselen;
	buffer = FUNC3(oid, type, sizep);
	if (buffer && FUNC0(mode)) {
		struct strbuf buf = STRBUF_INIT;
		size_t size = 0;

		FUNC4(&buf, buffer, *sizep, *sizep + 1);
		FUNC1(args->repo->index, path, buf.buf, buf.len, &buf);
		if (commit)
			FUNC2(commit, buf.buf, buf.len, &buf);
		buffer = FUNC5(&buf, &size);
		*sizep = size;
	}

	return buffer;
}
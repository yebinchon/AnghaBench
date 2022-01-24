#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct directory {scalar_t__ len; struct directory* up; int /*<<< orphan*/  path; } ;
struct attr_check {int dummy; } ;
struct archiver_context {TYPE_2__* args; struct directory* bottom; } ;
struct TYPE_4__ {TYPE_1__* repo; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int READ_TREE_RECURSIVE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct attr_check const*) ; 
 int /*<<< orphan*/  FUNC2 (struct directory*) ; 
 struct attr_check* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct strbuf*,char const*,unsigned int,int,struct archiver_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct object_id const*,int /*<<< orphan*/ ,size_t,char const*,unsigned int,int,void*) ; 
 scalar_t__ FUNC10 (struct archiver_context*) ; 

__attribute__((used)) static int FUNC11(const struct object_id *oid,
		struct strbuf *base, const char *filename,
		unsigned mode, int stage, void *context)
{
	struct archiver_context *c = context;

	while (c->bottom &&
	       !(base->len >= c->bottom->len &&
		 !FUNC8(base->buf, c->bottom->path, c->bottom->len))) {
		struct directory *next = c->bottom->up;
		FUNC2(c->bottom);
		c->bottom = next;
	}

	if (FUNC0(mode)) {
		size_t baselen = base->len;
		const struct attr_check *check;

		/* Borrow base, but restore its original value when done. */
		FUNC6(base, filename);
		FUNC5(base, '/');
		check = FUNC3(c->args->repo->index, base->buf);
		FUNC7(base, baselen);

		if (FUNC1(check))
			return 0;
		FUNC4(oid->hash, base, filename,
				mode, stage, c);
		return READ_TREE_RECURSIVE;
	}

	if (FUNC10(c))
		return -1;
	return FUNC9(oid, base->buf, base->len, filename, mode,
				   stage, context);
}
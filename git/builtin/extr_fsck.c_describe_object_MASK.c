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
typedef  struct strbuf {char const* buf; } const strbuf ;
struct object {int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {int /*<<< orphan*/  object_names; } ;

/* Variables and functions */
 int FUNC0 (struct strbuf const*) ; 
#define  STRBUF_INIT 128 
 TYPE_1__ fsck_walk_options ; 
 char* FUNC1 (int /*<<< orphan*/ ,struct object*) ; 
 scalar_t__ name_objects ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf const*) ; 

__attribute__((used)) static const char *FUNC6(struct object *obj)
{
	static struct strbuf bufs[] = {
		STRBUF_INIT, STRBUF_INIT, STRBUF_INIT, STRBUF_INIT
	};
	static int b = 0;
	struct strbuf *buf;
	char *name = NULL;

	if (name_objects)
		name = FUNC1(fsck_walk_options.object_names, obj);

	buf = bufs + b;
	b = (b + 1) % FUNC0(bufs);
	FUNC5(buf);
	FUNC4(buf, FUNC2(&obj->oid));
	if (name)
		FUNC3(buf, " (%s)", name);

	return buf->buf;
}
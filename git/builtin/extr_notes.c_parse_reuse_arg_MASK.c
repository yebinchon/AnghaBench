#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct option {struct note_data* value; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct note_data {int given; TYPE_1__ buf; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,struct object_id*) ; 
 char* FUNC5 (struct object_id*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char) ; 

__attribute__((used)) static int FUNC8(const struct option *opt, const char *arg, int unset)
{
	struct note_data *d = opt->value;
	char *buf;
	struct object_id object;
	enum object_type type;
	unsigned long len;

	FUNC0(unset);

	if (d->buf.len)
		FUNC7(&d->buf, '\n');

	if (FUNC4(arg, &object))
		FUNC2(FUNC1("failed to resolve '%s' as a valid ref."), arg);
	if (!(buf = FUNC5(&object, &type, &len)))
		FUNC2(FUNC1("failed to read object '%s'."), arg);
	if (type != OBJ_BLOB) {
		FUNC3(buf);
		FUNC2(FUNC1("cannot read note data from non-blob object '%s'."), arg);
	}
	FUNC6(&d->buf, buf, len);
	FUNC3(buf);

	d->given = 1;
	return 0;
}
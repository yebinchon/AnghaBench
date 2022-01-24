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
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ sizep; int /*<<< orphan*/  typep; } ;
struct expand_data {scalar_t__ type; unsigned long size; TYPE_1__ info; int /*<<< orphan*/  rest; struct object_id oid; } ;
struct batch_options {char cmdmode; scalar_t__ buffer_output; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 scalar_t__ OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batch_options*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,struct object_id const*,char**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct object_id const*) ; 
 void* FUNC8 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct object_id const*,int,char**,unsigned long*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC11(struct batch_options *opt, struct expand_data *data)
{
	const struct object_id *oid = &data->oid;

	FUNC1(data->info.typep);

	if (data->type == OBJ_BLOB) {
		if (opt->buffer_output)
			FUNC4(stdout);
		if (opt->cmdmode) {
			char *contents;
			unsigned long size;

			if (!data->rest)
				FUNC3("missing path for '%s'", FUNC7(oid));

			if (opt->cmdmode == 'w') {
				if (FUNC5(data->rest, 0100644, oid,
						  &contents, &size))
					FUNC3("could not convert '%s' %s",
					    FUNC7(oid), data->rest);
			} else if (opt->cmdmode == 'c') {
				enum object_type type;
				if (!FUNC10(the_repository,
						     data->rest, 0100644, oid,
						     1, &contents, &size))
					contents = FUNC8(oid,
								    &type,
								    &size);
				if (!contents)
					FUNC3("could not convert '%s' %s",
					    FUNC7(oid), data->rest);
			} else
				FUNC0("invalid cmdmode: %c", opt->cmdmode);
			FUNC2(opt, contents, size);
			FUNC6(contents);
		} else {
			FUNC9(oid);
		}
	}
	else {
		enum object_type type;
		unsigned long size;
		void *contents;

		contents = FUNC8(oid, &type, &size);
		if (!contents)
			FUNC3("object %s disappeared", FUNC7(oid));
		if (type != data->type)
			FUNC3("object %s changed type!?", FUNC7(oid));
		if (data->info.sizep && size != data->size)
			FUNC3("object %s changed size!?", FUNC7(oid));

		FUNC2(opt, contents, size);
		FUNC6(contents);
	}
}
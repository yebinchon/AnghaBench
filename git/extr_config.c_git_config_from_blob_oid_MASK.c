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
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  config_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ORIGIN_BLOB ; 
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*,unsigned long,void*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct object_id const*,int*,unsigned long*) ; 

int FUNC5(config_fn_t fn,
			      const char *name,
			      const struct object_id *oid,
			      void *data)
{
	enum object_type type;
	char *buf;
	unsigned long size;
	int ret;

	buf = FUNC4(oid, &type, &size);
	if (!buf)
		return FUNC1(FUNC0("unable to load config blob object '%s'"), name);
	if (type != OBJ_BLOB) {
		FUNC2(buf);
		return FUNC1(FUNC0("reference '%s' does not point to a blob"), name);
	}

	ret = FUNC3(fn, CONFIG_ORIGIN_BLOB, name, buf, size,
				  data, NULL);
	FUNC2(buf);

	return ret;
}
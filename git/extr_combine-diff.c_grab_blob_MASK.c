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
struct userdiff_driver {int dummy; } ;
struct strbuf {unsigned long len; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_filespec {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct diff_filespec* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_filespec*,struct object_id const*,int,unsigned int) ; 
 unsigned long FUNC4 (struct repository*,struct userdiff_driver*,struct diff_filespec*,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_filespec*) ; 
 scalar_t__ FUNC6 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC7 (struct object_id const*) ; 
 char* FUNC8 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (struct strbuf*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int,int) ; 

__attribute__((used)) static char *FUNC12(struct repository *r,
		       const struct object_id *oid, unsigned int mode,
		       unsigned long *size, struct userdiff_driver *textconv,
		       const char *path)
{
	char *blob;
	enum object_type type;

	if (FUNC0(mode)) {
		struct strbuf buf = STRBUF_INIT;
		FUNC9(&buf, "Subproject commit %s\n", FUNC7(oid));
		*size = buf.len;
		blob = FUNC10(&buf, NULL);
	} else if (FUNC6(oid)) {
		/* deleted blob */
		*size = 0;
		return FUNC11(1, 1);
	} else if (textconv) {
		struct diff_filespec *df = FUNC1(path);
		FUNC3(df, oid, 1, mode);
		*size = FUNC4(r, textconv, df, &blob);
		FUNC5(df);
	} else {
		blob = FUNC8(oid, &type, size);
		if (type != OBJ_BLOB)
			FUNC2("object '%s' is not a blob!", FUNC7(oid));
	}
	return blob;
}
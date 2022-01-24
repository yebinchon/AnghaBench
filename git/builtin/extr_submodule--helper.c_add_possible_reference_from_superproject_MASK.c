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
struct submodule_alternate_setup {int error_mode; int /*<<< orphan*/  submodule_name; int /*<<< orphan*/  reference; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_directory {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
#define  SUBMODULE_ALTERNATE_ERROR_DIE 130 
#define  SUBMODULE_ALTERNATE_ERROR_IGNORE 129 
#define  SUBMODULE_ALTERNATE_ERROR_INFO 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
		struct object_directory *odb, void *sas_cb)
{
	struct submodule_alternate_setup *sas = sas_cb;
	size_t len;

	/*
	 * If the alternate object store is another repository, try the
	 * standard layout with .git/(modules/<name>)+/objects
	 */
	if (FUNC9(odb->path, "/objects", &len)) {
		char *sm_alternate;
		struct strbuf sb = STRBUF_INIT;
		struct strbuf err = STRBUF_INIT;
		FUNC5(&sb, odb->path, len);

		/*
		 * We need to end the new path with '/' to mark it as a dir,
		 * otherwise a submodule name containing '/' will be broken
		 * as the last part of a missing submodule reference would
		 * be taken as a file name.
		 */
		FUNC6(&sb, "/modules/%s/", sas->submodule_name);

		sm_alternate = FUNC1(sb.buf, &err);
		if (sm_alternate) {
			FUNC8(sas->reference, FUNC10(sb.buf));
			FUNC4(sm_alternate);
		} else {
			switch (sas->error_mode) {
			case SUBMODULE_ALTERNATE_ERROR_DIE:
				FUNC2(FUNC0("submodule '%s' cannot add alternate: %s"),
				    sas->submodule_name, err.buf);
			case SUBMODULE_ALTERNATE_ERROR_INFO:
				FUNC3(stderr, FUNC0("submodule '%s' cannot add alternate: %s"),
					sas->submodule_name, err.buf);
			case SUBMODULE_ALTERNATE_ERROR_IGNORE:
				; /* nothing */
			}
		}
		FUNC7(&sb);
	}

	return 0;
}
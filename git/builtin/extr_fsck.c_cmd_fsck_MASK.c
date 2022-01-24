#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct progress {int dummy; } ;
struct packed_git {scalar_t__ num_objects; struct packed_git* next; } ;
struct object_id {int dummy; } ;
struct object_directory {char* path; struct object_directory* next; } ;
struct object {int flags; } ;
struct decoration {int dummy; } ;
struct child_process {char const** argv; int git_cmd; } ;
struct blob {struct object object; } ;
struct TYPE_16__ {int strict; int /*<<< orphan*/  error_func; int /*<<< orphan*/  walk; } ;
struct TYPE_15__ {int /*<<< orphan*/  object_names; int /*<<< orphan*/  walk; } ;
struct TYPE_14__ {TYPE_1__* objects; } ;
struct TYPE_13__ {struct object_directory* odb; } ;
struct TYPE_12__ {unsigned int ce_mode; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int ERROR_COMMIT_GRAPH ; 
 int ERROR_OBJECT ; 
 int ERROR_PACK ; 
 int HAS_OBJ ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int USED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_11__** active_cache ; 
 scalar_t__ active_cache_tree ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int check_full ; 
 scalar_t__ check_strict ; 
 int /*<<< orphan*/  FUNC4 (struct child_process*) ; 
 scalar_t__ connectivity_only ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int errors_found ; 
 scalar_t__ fetch_if_missing ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  fsck_config ; 
 int /*<<< orphan*/  fsck_error_func ; 
 scalar_t__ FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  fsck_obj_buffer ; 
 TYPE_9__ fsck_obj_options ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  fsck_opts ; 
 int /*<<< orphan*/  fsck_usage ; 
 TYPE_8__ fsck_walk_options ; 
 struct packed_git* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int*) ; 
 scalar_t__ include_reflogs ; 
 scalar_t__ FUNC16 (struct object_id*) ; 
 int FUNC17 (int) ; 
 int keep_cache_objects ; 
 struct blob* FUNC18 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct object* FUNC19 (TYPE_2__*,struct object_id*) ; 
 int /*<<< orphan*/  mark_loose_for_connectivity ; 
 int /*<<< orphan*/  mark_object ; 
 int /*<<< orphan*/  FUNC20 (struct object*) ; 
 int /*<<< orphan*/  mark_packed_for_connectivity ; 
 int /*<<< orphan*/  mark_used ; 
 scalar_t__ name_objects ; 
 char const* FUNC21 (struct object_id*) ; 
 scalar_t__ FUNC22 (struct packed_git*) ; 
 int FUNC23 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ read_replace_refs ; 
 scalar_t__ FUNC26 (struct child_process*) ; 
 int show_progress ; 
 struct progress* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct progress**) ; 
 TYPE_2__* the_repository ; 
 scalar_t__ verbose ; 
 int verify_ce_order ; 
 int verify_index_checksum ; 
 scalar_t__ FUNC29 (TYPE_2__*,struct packed_git*,int /*<<< orphan*/ ,struct progress*,int /*<<< orphan*/ ) ; 
 scalar_t__ write_lost_and_found ; 
 int /*<<< orphan*/  FUNC30 (int,int) ; 
 int /*<<< orphan*/  FUNC31 (char const*) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ) ; 

int FUNC33(int argc, const char **argv, const char *prefix)
{
	int i;
	struct object_directory *odb;

	/* fsck knows how to handle missing promisor objects */
	fetch_if_missing = 0;

	errors_found = 0;
	read_replace_refs = 0;

	argc = FUNC23(argc, argv, prefix, fsck_opts, fsck_usage, 0);

	fsck_walk_options.walk = mark_object;
	fsck_obj_options.walk = mark_used;
	fsck_obj_options.error_func = fsck_error_func;
	if (check_strict)
		fsck_obj_options.strict = 1;

	if (show_progress == -1)
		show_progress = FUNC17(2);
	if (verbose)
		show_progress = 0;

	if (write_lost_and_found) {
		check_full = 1;
		include_reflogs = 0;
	}

	if (name_objects)
		fsck_walk_options.object_names =
			FUNC30(1, sizeof(struct decoration));

	FUNC14(fsck_config, NULL);

	if (connectivity_only) {
		FUNC6(mark_loose_for_connectivity, NULL, 0);
		FUNC7(mark_packed_for_connectivity, NULL, 0);
	} else {
		FUNC24(the_repository);
		for (odb = the_repository->objects->odb; odb; odb = odb->next)
			FUNC10(odb->path);

		if (check_full) {
			struct packed_git *p;
			uint32_t total = 0, count = 0;
			struct progress *progress = NULL;

			if (show_progress) {
				for (p = FUNC11(the_repository); p;
				     p = p->next) {
					if (FUNC22(p))
						continue;
					total += p->num_objects;
				}

				progress = FUNC27(FUNC1("Checking objects"), total);
			}
			for (p = FUNC11(the_repository); p;
			     p = p->next) {
				/* verify gives error messages itself */
				if (FUNC29(the_repository,
						p, fsck_obj_buffer,
						progress, count))
					errors_found |= ERROR_PACK;
				count += p->num_objects;
			}
			FUNC28(&progress);
		}

		if (FUNC9(&fsck_obj_options))
			errors_found |= ERROR_OBJECT;
	}

	for (i = 0; i < argc; i++) {
		const char *arg = argv[i];
		struct object_id oid;
		if (!FUNC13(arg, &oid)) {
			struct object *obj = FUNC19(the_repository,
							   &oid);

			if (!obj || !(obj->flags & HAS_OBJ)) {
				if (FUNC16(&oid))
					continue;
				FUNC5(FUNC1("%s: object missing"), FUNC21(&oid));
				errors_found |= ERROR_OBJECT;
				continue;
			}

			obj->flags |= USED;
			if (name_objects)
				FUNC2(fsck_walk_options.object_names,
					obj, FUNC31(arg));
			FUNC20(obj);
			continue;
		}
		FUNC5(FUNC1("invalid parameter: expected sha1, got '%s'"), arg);
		errors_found |= ERROR_OBJECT;
	}

	/*
	 * If we've not been given any explicit head information, do the
	 * default ones from .git/refs. We also consider the index file
	 * in this case (ie this implies --cache).
	 */
	if (!argc) {
		FUNC12();
		keep_cache_objects = 1;
	}

	if (keep_cache_objects) {
		verify_index_checksum = 1;
		verify_ce_order = 1;
		FUNC25();
		for (i = 0; i < active_nr; i++) {
			unsigned int mode;
			struct blob *blob;
			struct object *obj;

			mode = active_cache[i]->ce_mode;
			if (FUNC0(mode))
				continue;
			blob = FUNC18(the_repository,
					   &active_cache[i]->oid);
			if (!blob)
				continue;
			obj = &blob->object;
			obj->flags |= USED;
			if (name_objects)
				FUNC2(fsck_walk_options.object_names,
					obj,
					FUNC32(":%s", active_cache[i]->name));
			FUNC20(obj);
		}
		if (active_cache_tree)
			FUNC8(active_cache_tree);
	}

	FUNC3();

	if (!FUNC15("core.commitgraph", &i) && i) {
		struct child_process commit_graph_verify = CHILD_PROCESS_INIT;
		const char *verify_argv[] = { "commit-graph", "verify", NULL, NULL, NULL };

		FUNC24(the_repository);
		for (odb = the_repository->objects->odb; odb; odb = odb->next) {
			FUNC4(&commit_graph_verify);
			commit_graph_verify.argv = verify_argv;
			commit_graph_verify.git_cmd = 1;
			verify_argv[2] = "--object-dir";
			verify_argv[3] = odb->path;
			if (FUNC26(&commit_graph_verify))
				errors_found |= ERROR_COMMIT_GRAPH;
		}
	}

	if (!FUNC15("core.multipackindex", &i) && i) {
		struct child_process midx_verify = CHILD_PROCESS_INIT;
		const char *midx_argv[] = { "multi-pack-index", "verify", NULL, NULL, NULL };

		FUNC24(the_repository);
		for (odb = the_repository->objects->odb; odb; odb = odb->next) {
			FUNC4(&midx_verify);
			midx_verify.argv = midx_argv;
			midx_verify.git_cmd = 1;
			midx_argv[2] = "--object-dir";
			midx_argv[3] = odb->path;
			if (FUNC26(&midx_verify))
				errors_found |= ERROR_COMMIT_GRAPH;
		}
	}

	return errors_found;
}
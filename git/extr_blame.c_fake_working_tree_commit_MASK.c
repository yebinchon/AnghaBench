#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct stat {int st_mode; int /*<<< orphan*/  st_size; } ;
struct repository {TYPE_7__* index; } ;
struct object_id {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  allow_textconv; } ;
struct diff_options {TYPE_4__ flags; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct TYPE_13__ {int parsed; } ;
struct commit {struct commit_list* parents; int /*<<< orphan*/  date; TYPE_1__ object; } ;
struct cache_entry {int ce_namelen; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;
struct TYPE_17__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
struct blame_origin {int /*<<< orphan*/  blob_oid; TYPE_5__ file; } ;
struct TYPE_19__ {TYPE_6__** cache; } ;
struct TYPE_18__ {unsigned int ce_mode; } ;
struct TYPE_14__ {int /*<<< orphan*/  oid; } ;
struct TYPE_15__ {TYPE_2__ object; } ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int /*<<< orphan*/  OBJ_BLOB ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  WANT_BLANK_IDENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,struct cache_entry*,int) ; 
 struct commit* FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct commit_list**) ; 
 struct commit_list** FUNC3 (struct repository*,struct commit_list**,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,char const*) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 char* FUNC12 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_7__*,char const*,int) ; 
 scalar_t__ FUNC14 (char const*,struct stat*) ; 
 struct cache_entry* FUNC15 (TYPE_7__*,int) ; 
 struct blame_origin* FUNC16 (struct commit*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct repository*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct repository*,struct commit*,struct strbuf*) ; 
 scalar_t__ FUNC24 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC25 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC26 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC28 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (char const*,char const*) ; 
 int FUNC32 (char const*) ; 
 int /*<<< orphan*/  FUNC33 (struct repository*,char const*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (struct repository*,struct commit*,char const*) ; 

__attribute__((used)) static struct commit *FUNC36(struct repository *r,
					       struct diff_options *opt,
					       const char *path,
					       const char *contents_from)
{
	struct commit *commit;
	struct blame_origin *origin;
	struct commit_list **parent_tail, *parent;
	struct object_id head_oid;
	struct strbuf buf = STRBUF_INIT;
	const char *ident;
	time_t now;
	int len;
	struct cache_entry *ce;
	unsigned mode;
	struct strbuf msg = STRBUF_INIT;

	FUNC21(r);
	FUNC34(&now);
	commit = FUNC1(r);
	commit->object.parsed = 1;
	commit->date = now;
	parent_tail = &commit->parents;

	if (!FUNC22("HEAD", RESOLVE_REF_READING, &head_oid, NULL))
		FUNC9("no such ref: HEAD");

	parent_tail = FUNC3(r, parent_tail, &head_oid);
	FUNC2(r, parent_tail);
	FUNC35(r, commit, path);

	origin = FUNC16(commit, path);

	ident = FUNC12("Not Committed Yet", "not.committed.yet",
			WANT_BLANK_IDENT, NULL, 0);
	FUNC26(&msg, "tree 0000000000000000000000000000000000000000\n");
	for (parent = commit->parents; parent; parent = parent->next)
		FUNC25(&msg, "parent %s\n",
			    FUNC18(&parent->item->object.oid));
	FUNC25(&msg,
		    "author %s\n"
		    "committer %s\n\n"
		    "Version of %s from %s\n",
		    ident, ident, path,
		    (!contents_from ? path :
		     (!FUNC31(contents_from, "-") ? "standard input" : contents_from)));
	FUNC23(r, commit, &msg);

	if (!contents_from || FUNC31("-", contents_from)) {
		struct stat st;
		const char *read_from;
		char *buf_ptr;
		unsigned long buf_len;

		if (contents_from) {
			if (FUNC24(contents_from, &st) < 0)
				FUNC10("Cannot stat '%s'", contents_from);
			read_from = contents_from;
		}
		else {
			if (FUNC14(path, &st) < 0)
				FUNC10("Cannot lstat '%s'", path);
			read_from = path;
		}
		mode = FUNC5(st.st_mode);

		switch (st.st_mode & S_IFMT) {
		case S_IFREG:
			if (opt->flags.allow_textconv &&
			    FUNC33(r, read_from, mode, &null_oid, 0, &buf_ptr, &buf_len))
				FUNC27(&buf, buf_ptr, buf_len, buf_len + 1);
			else if (FUNC29(&buf, read_from, st.st_size) != st.st_size)
				FUNC10("cannot open or read '%s'", read_from);
			break;
		case S_IFLNK:
			if (FUNC30(&buf, read_from, st.st_size) < 0)
				FUNC10("cannot readlink '%s'", read_from);
			break;
		default:
			FUNC9("unsupported file type %s", read_from);
		}
	}
	else {
		/* Reading from stdin */
		mode = 0;
		if (FUNC28(&buf, 0, 0) < 0)
			FUNC10("failed to read from stdin");
	}
	FUNC6(r->index, path, buf.buf, buf.len, &buf, 0);
	origin->file.ptr = buf.buf;
	origin->file.size = buf.len;
	FUNC20(buf.buf, buf.len, OBJ_BLOB, &origin->blob_oid);

	/*
	 * Read the current index, replace the path entry with
	 * origin->blob_sha1 without mucking with its mode or type
	 * bits; we are not going to write this index out -- we just
	 * want to run "diff-index --cached".
	 */
	FUNC11(r->index);
	FUNC21(r);

	len = FUNC32(path);
	if (!mode) {
		int pos = FUNC13(r->index, path, len);
		if (0 <= pos)
			mode = r->index->cache[pos]->ce_mode;
		else
			/* Let's not bother reading from HEAD tree */
			mode = S_IFREG | 0644;
	}
	ce = FUNC15(r->index, len);
	FUNC19(&ce->oid, &origin->blob_oid);
	FUNC17(ce->name, path, len);
	ce->ce_flags = FUNC7(0);
	ce->ce_namelen = len;
	ce->ce_mode = FUNC8(mode);
	FUNC0(r->index, ce,
			ADD_CACHE_OK_TO_ADD | ADD_CACHE_OK_TO_REPLACE);

	FUNC4(r->index, path);

	return commit;
}
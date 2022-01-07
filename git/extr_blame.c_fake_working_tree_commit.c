
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int time_t ;
struct strbuf {int len; int buf; } ;
struct stat {int st_mode; int st_size; } ;
struct repository {TYPE_7__* index; } ;
struct object_id {int dummy; } ;
struct TYPE_16__ {int allow_textconv; } ;
struct diff_options {TYPE_4__ flags; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct TYPE_13__ {int parsed; } ;
struct commit {struct commit_list* parents; int date; TYPE_1__ object; } ;
struct cache_entry {int ce_namelen; int ce_mode; int ce_flags; int name; int oid; } ;
struct TYPE_17__ {int size; int ptr; } ;
struct blame_origin {int blob_oid; TYPE_5__ file; } ;
struct TYPE_19__ {TYPE_6__** cache; } ;
struct TYPE_18__ {unsigned int ce_mode; } ;
struct TYPE_14__ {int oid; } ;
struct TYPE_15__ {TYPE_2__ object; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int OBJ_BLOB ;
 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;

 int S_IFMT ;

 int WANT_BLANK_IDENT ;
 int add_index_entry (TYPE_7__*,struct cache_entry*,int) ;
 struct commit* alloc_commit_node (struct repository*) ;
 int append_merge_parents (struct repository*,struct commit_list**) ;
 struct commit_list** append_parent (struct repository*,struct commit_list**,struct object_id*) ;
 int cache_tree_invalidate_path (TYPE_7__*,char const*) ;
 unsigned int canon_mode (int) ;
 int convert_to_git (TYPE_7__*,char const*,int ,int ,struct strbuf*,int ) ;
 int create_ce_flags (int ) ;
 int create_ce_mode (unsigned int) ;
 int die (char*,...) ;
 int die_errno (char*,...) ;
 int discard_index (TYPE_7__*) ;
 char* fmt_ident (char*,char*,int ,int *,int ) ;
 int index_name_pos (TYPE_7__*,char const*,int) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 struct cache_entry* make_empty_cache_entry (TYPE_7__*,int) ;
 struct blame_origin* make_origin (struct commit*,char const*) ;
 int memcpy (int ,char const*,int) ;
 int null_oid ;
 int oid_to_hex (int *) ;
 int oidcpy (int *,int *) ;
 int pretend_object_file (int ,int ,int ,int *) ;
 int repo_read_index (struct repository*) ;
 int resolve_ref_unsafe (char*,int ,struct object_id*,int *) ;
 int set_commit_buffer_from_strbuf (struct repository*,struct commit*,struct strbuf*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_attach (struct strbuf*,char*,unsigned long,unsigned long) ;
 scalar_t__ strbuf_read (struct strbuf*,int ,int ) ;
 int strbuf_read_file (struct strbuf*,char const*,int ) ;
 int strbuf_readlink (struct strbuf*,char const*,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int textconv_object (struct repository*,char const*,unsigned int,int *,int ,char**,unsigned long*) ;
 int time (int *) ;
 int verify_working_tree_path (struct repository*,struct commit*,char const*) ;

__attribute__((used)) static struct commit *fake_working_tree_commit(struct repository *r,
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

 repo_read_index(r);
 time(&now);
 commit = alloc_commit_node(r);
 commit->object.parsed = 1;
 commit->date = now;
 parent_tail = &commit->parents;

 if (!resolve_ref_unsafe("HEAD", RESOLVE_REF_READING, &head_oid, ((void*)0)))
  die("no such ref: HEAD");

 parent_tail = append_parent(r, parent_tail, &head_oid);
 append_merge_parents(r, parent_tail);
 verify_working_tree_path(r, commit, path);

 origin = make_origin(commit, path);

 ident = fmt_ident("Not Committed Yet", "not.committed.yet",
   WANT_BLANK_IDENT, ((void*)0), 0);
 strbuf_addstr(&msg, "tree 0000000000000000000000000000000000000000\n");
 for (parent = commit->parents; parent; parent = parent->next)
  strbuf_addf(&msg, "parent %s\n",
       oid_to_hex(&parent->item->object.oid));
 strbuf_addf(&msg,
      "author %s\n"
      "committer %s\n\n"
      "Version of %s from %s\n",
      ident, ident, path,
      (!contents_from ? path :
       (!strcmp(contents_from, "-") ? "standard input" : contents_from)));
 set_commit_buffer_from_strbuf(r, commit, &msg);

 if (!contents_from || strcmp("-", contents_from)) {
  struct stat st;
  const char *read_from;
  char *buf_ptr;
  unsigned long buf_len;

  if (contents_from) {
   if (stat(contents_from, &st) < 0)
    die_errno("Cannot stat '%s'", contents_from);
   read_from = contents_from;
  }
  else {
   if (lstat(path, &st) < 0)
    die_errno("Cannot lstat '%s'", path);
   read_from = path;
  }
  mode = canon_mode(st.st_mode);

  switch (st.st_mode & S_IFMT) {
  case 128:
   if (opt->flags.allow_textconv &&
       textconv_object(r, read_from, mode, &null_oid, 0, &buf_ptr, &buf_len))
    strbuf_attach(&buf, buf_ptr, buf_len, buf_len + 1);
   else if (strbuf_read_file(&buf, read_from, st.st_size) != st.st_size)
    die_errno("cannot open or read '%s'", read_from);
   break;
  case 129:
   if (strbuf_readlink(&buf, read_from, st.st_size) < 0)
    die_errno("cannot readlink '%s'", read_from);
   break;
  default:
   die("unsupported file type %s", read_from);
  }
 }
 else {

  mode = 0;
  if (strbuf_read(&buf, 0, 0) < 0)
   die_errno("failed to read from stdin");
 }
 convert_to_git(r->index, path, buf.buf, buf.len, &buf, 0);
 origin->file.ptr = buf.buf;
 origin->file.size = buf.len;
 pretend_object_file(buf.buf, buf.len, OBJ_BLOB, &origin->blob_oid);







 discard_index(r->index);
 repo_read_index(r);

 len = strlen(path);
 if (!mode) {
  int pos = index_name_pos(r->index, path, len);
  if (0 <= pos)
   mode = r->index->cache[pos]->ce_mode;
  else

   mode = 128 | 0644;
 }
 ce = make_empty_cache_entry(r->index, len);
 oidcpy(&ce->oid, &origin->blob_oid);
 memcpy(ce->name, path, len);
 ce->ce_flags = create_ce_flags(0);
 ce->ce_namelen = len;
 ce->ce_mode = create_ce_mode(mode);
 add_index_entry(r->index, ce,
   ADD_CACHE_OK_TO_ADD | ADD_CACHE_OK_TO_REPLACE);

 cache_tree_invalidate_path(r->index, path);

 return commit;
}

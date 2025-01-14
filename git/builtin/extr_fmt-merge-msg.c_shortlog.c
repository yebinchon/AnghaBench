
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct string_list {int nr; TYPE_2__* items; } ;
struct strbuf {int len; } ;
struct TYPE_7__ {scalar_t__ nr; } ;
struct rev_info {TYPE_3__ pending; int * commits; } ;
struct pretty_print_context {int member_0; } ;
struct object_id {int dummy; } ;
struct origin_data {scalar_t__ is_local_branch; struct object_id oid; } ;
struct object {scalar_t__ type; int flags; struct object_id const oid; } ;
struct fmt_merge_msg_opts {int shortlog_len; scalar_t__ credit_people; } ;
struct commit {struct object object; TYPE_1__* parents; } ;
struct TYPE_8__ {int hexsz; } ;
struct TYPE_6__ {char const* string; } ;
struct TYPE_5__ {scalar_t__ next; } ;


 int ADDED ;
 scalar_t__ OBJ_COMMIT ;
 int SEEN ;
 int SHOWN ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 int TREESAME ;
 int UNINTERESTING ;
 int add_branch_desc (struct strbuf*,char const*) ;
 int add_pending_object (struct rev_info*,struct object*,char const*) ;
 int add_people_info (struct strbuf*,struct string_list*,struct string_list*) ;
 int clear_commit_marks (struct commit*,int) ;
 struct object* deref_tag (int ,int ,int ,int ) ;
 int die (char*) ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 int free_commit_list (int *) ;
 struct commit* get_revision (struct rev_info*) ;
 int oid_to_hex (struct object_id const*) ;
 int parse_object (int ,struct object_id const*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int record_person (char,struct string_list*,struct commit*) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_ltrim (struct strbuf*) ;
 int string_list_append (struct string_list*,int ) ;
 int string_list_append_nodup (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 TYPE_4__* the_hash_algo ;
 int the_repository ;
 scalar_t__ use_branch_desc ;

__attribute__((used)) static void shortlog(const char *name,
       struct origin_data *origin_data,
       struct commit *head,
       struct rev_info *rev,
       struct fmt_merge_msg_opts *opts,
       struct strbuf *out)
{
 int i, count = 0;
 struct commit *commit;
 struct object *branch;
 struct string_list subjects = STRING_LIST_INIT_DUP;
 struct string_list authors = STRING_LIST_INIT_DUP;
 struct string_list committers = STRING_LIST_INIT_DUP;
 int flags = UNINTERESTING | TREESAME | SEEN | SHOWN | ADDED;
 struct strbuf sb = STRBUF_INIT;
 const struct object_id *oid = &origin_data->oid;
 int limit = opts->shortlog_len;

 branch = deref_tag(the_repository, parse_object(the_repository, oid),
      oid_to_hex(oid),
      the_hash_algo->hexsz);
 if (!branch || branch->type != OBJ_COMMIT)
  return;

 setup_revisions(0, ((void*)0), rev, ((void*)0));
 add_pending_object(rev, branch, name);
 add_pending_object(rev, &head->object, "^HEAD");
 head->object.flags |= UNINTERESTING;
 if (prepare_revision_walk(rev))
  die("revision walk setup failed");
 while ((commit = get_revision(rev)) != ((void*)0)) {
  struct pretty_print_context ctx = {0};

  if (commit->parents && commit->parents->next) {

   if (opts->credit_people)
    record_person('c', &committers, commit);
   continue;
  }
  if (!count && opts->credit_people)

   record_person('c', &committers, commit);
  if (opts->credit_people)
   record_person('a', &authors, commit);
  count++;
  if (subjects.nr > limit)
   continue;

  format_commit_message(commit, "%s", &sb, &ctx);
  strbuf_ltrim(&sb);

  if (!sb.len)
   string_list_append(&subjects,
        oid_to_hex(&commit->object.oid));
  else
   string_list_append_nodup(&subjects,
       strbuf_detach(&sb, ((void*)0)));
 }

 if (opts->credit_people)
  add_people_info(out, &authors, &committers);
 if (count > limit)
  strbuf_addf(out, "\n* %s: (%d commits)\n", name, count);
 else
  strbuf_addf(out, "\n* %s:\n", name);

 if (origin_data->is_local_branch && use_branch_desc)
  add_branch_desc(out, name);

 for (i = 0; i < subjects.nr; i++)
  if (i >= limit)
   strbuf_addstr(out, "  ...\n");
  else
   strbuf_addf(out, "  %s\n", subjects.items[i].string);

 clear_commit_marks((struct commit *)branch, flags);
 clear_commit_marks(head, flags);
 free_commit_list(rev->commits);
 rev->commits = ((void*)0);
 rev->pending.nr = 0;

 string_list_clear(&authors, 0);
 string_list_clear(&committers, 0);
 string_list_clear(&subjects, 0);
}

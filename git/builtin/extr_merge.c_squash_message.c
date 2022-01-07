
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct rev_info {int ignore_merges; int commit_format; int date_mode; int abbrev; } ;
struct pretty_print_context {int fmt; int date_mode; int abbrev; int member_0; } ;
struct commit_list {TYPE_1__* item; struct commit_list* next; } ;
struct TYPE_4__ {int oid; int flags; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {TYPE_2__ object; } ;


 int CMIT_FMT_MEDIUM ;
 struct strbuf STRBUF_INIT ;
 int UNINTERESTING ;
 char* _ (char*) ;
 int add_pending_object (struct rev_info*,TYPE_2__*,int *) ;
 int die (char*) ;
 struct commit* get_revision (struct rev_info*) ;
 int git_path_squash_msg (int ) ;
 int oid_to_hex (int *) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int pretty_print_commit (struct pretty_print_context*,struct commit*,struct strbuf*) ;
 int printf (char*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int write_file_buf (int ,int ,int ) ;

__attribute__((used)) static void squash_message(struct commit *commit, struct commit_list *remoteheads)
{
 struct rev_info rev;
 struct strbuf out = STRBUF_INIT;
 struct commit_list *j;
 struct pretty_print_context ctx = {0};

 printf(_("Squash commit -- not updating HEAD\n"));

 repo_init_revisions(the_repository, &rev, ((void*)0));
 rev.ignore_merges = 1;
 rev.commit_format = CMIT_FMT_MEDIUM;

 commit->object.flags |= UNINTERESTING;
 add_pending_object(&rev, &commit->object, ((void*)0));

 for (j = remoteheads; j; j = j->next)
  add_pending_object(&rev, &j->item->object, ((void*)0));

 setup_revisions(0, ((void*)0), &rev, ((void*)0));
 if (prepare_revision_walk(&rev))
  die(_("revision walk setup failed"));

 ctx.abbrev = rev.abbrev;
 ctx.date_mode = rev.date_mode;
 ctx.fmt = rev.commit_format;

 strbuf_addstr(&out, "Squashed commit of the following:\n");
 while ((commit = get_revision(&rev)) != ((void*)0)) {
  strbuf_addch(&out, '\n');
  strbuf_addf(&out, "commit %s\n",
   oid_to_hex(&commit->object.oid));
  pretty_print_commit(&ctx, commit, &out);
 }
 write_file_buf(git_path_squash_msg(the_repository), out.buf, out.len);
 strbuf_release(&out);
}

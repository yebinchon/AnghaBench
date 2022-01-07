
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct strbuf {char* buf; } ;
struct rev_info {struct string_list* mailmap; } ;
struct TYPE_2__ {int type; } ;
struct pretty_print_context {TYPE_1__ date_mode; int member_0; } ;
struct commit {int dummy; } ;


 int DATE_NORMAL ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int _ (char*) ;
 int clear_mailmap (struct string_list*) ;
 int die (int ,...) ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 struct commit* get_revision (struct rev_info*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int read_mailmap (struct string_list*,int *) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 char const* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static const char *find_author_by_nickname(const char *name)
{
 struct rev_info revs;
 struct commit *commit;
 struct strbuf buf = STRBUF_INIT;
 struct string_list mailmap = STRING_LIST_INIT_NODUP;
 const char *av[20];
 int ac = 0;

 repo_init_revisions(the_repository, &revs, ((void*)0));
 strbuf_addf(&buf, "--author=%s", name);
 av[++ac] = "--all";
 av[++ac] = "-i";
 av[++ac] = buf.buf;
 av[++ac] = ((void*)0);
 setup_revisions(ac, av, &revs, ((void*)0));
 revs.mailmap = &mailmap;
 read_mailmap(revs.mailmap, ((void*)0));

 if (prepare_revision_walk(&revs))
  die(_("revision walk setup failed"));
 commit = get_revision(&revs);
 if (commit) {
  struct pretty_print_context ctx = {0};
  ctx.date_mode.type = DATE_NORMAL;
  strbuf_release(&buf);
  format_commit_message(commit, "%aN <%aE>", &buf, &ctx);
  clear_mailmap(&mailmap);
  return strbuf_detach(&buf, ((void*)0));
 }
 die(_("--author '%s' is not 'Name <email>' and matches no existing author"), name);
}

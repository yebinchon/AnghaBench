
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct shortlog {int wrap_lines; int in1; int in2; int file; int wrap; } ;
struct TYPE_4__ {int file; int use_color; } ;
struct rev_info {int creation_factor; int rdiff2; scalar_t__ rdiff1; int rdiff_title; TYPE_2__ diffopt; int idiff_title; scalar_t__ idiff_oid1; scalar_t__ numbered_files; int commit_format; } ;
struct TYPE_3__ {int type; } ;
struct pretty_print_context {int print_email_subject; struct rev_info* rev; TYPE_1__ date_mode; int fmt; int after_subject; int member_0; } ;
struct diff_options {int use_color; int file; } ;
struct commit {int dummy; } ;


 int CMIT_FMT_EMAIL ;
 int DATE_RFC2822 ;
 int MAIL_DEFAULT_WRAP ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int cmit_fmt_is_mail (int ) ;
 int die (int ) ;
 int diff_setup (struct diff_options*) ;
 int diff_setup_done (struct diff_options*) ;
 char* find_branch_name (struct rev_info*) ;
 int fprintf (int ,char*,char*) ;
 int fprintf_ln (int ,char*,int ) ;
 char* get_commit_buffer (struct commit*,int *) ;
 char* git_committer_info (int ) ;
 scalar_t__ has_non_ascii (char const*) ;
 int log_write_email_headers (struct rev_info*,struct commit*,int *,int*,int ) ;
 scalar_t__ open_next_file (int *,char*,struct rev_info*,int) ;
 int pp_user_info (struct pretty_print_context*,int *,struct strbuf*,char const*,char const*) ;
 int prepare_cover_text (struct pretty_print_context*,char const*,struct strbuf*,char const*,int) ;
 int shortlog_add_commit (struct shortlog*,struct commit*) ;
 int shortlog_init (struct shortlog*) ;
 int shortlog_output (struct shortlog*) ;
 int show_diffstat (struct rev_info*,struct commit*,struct commit*) ;
 int show_interdiff (struct rev_info*,int ) ;
 int show_range_diff (scalar_t__,int ,int ,int,struct diff_options*) ;
 int strbuf_release (struct strbuf*) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

__attribute__((used)) static void make_cover_letter(struct rev_info *rev, int use_stdout,
         struct commit *origin,
         int nr, struct commit **list,
         const char *branch_name,
         int quiet)
{
 const char *committer;
 struct shortlog log;
 struct strbuf sb = STRBUF_INIT;
 int i;
 const char *encoding = "UTF-8";
 int need_8bit_cte = 0;
 struct pretty_print_context pp = {0};
 struct commit *head = list[0];

 if (!cmit_fmt_is_mail(rev->commit_format))
  die(_("cover letter needs email format"));

 committer = git_committer_info(0);

 if (!use_stdout &&
     open_next_file(((void*)0), rev->numbered_files ? ((void*)0) : "cover-letter", rev, quiet))
  die(_("failed to create cover-letter file"));

 log_write_email_headers(rev, head, &pp.after_subject, &need_8bit_cte, 0);

 for (i = 0; !need_8bit_cte && i < nr; i++) {
  const char *buf = get_commit_buffer(list[i], ((void*)0));
  if (has_non_ascii(buf))
   need_8bit_cte = 1;
  unuse_commit_buffer(list[i], buf);
 }

 if (!branch_name)
  branch_name = find_branch_name(rev);

 pp.fmt = CMIT_FMT_EMAIL;
 pp.date_mode.type = DATE_RFC2822;
 pp.rev = rev;
 pp.print_email_subject = 1;
 pp_user_info(&pp, ((void*)0), &sb, committer, encoding);
 prepare_cover_text(&pp, branch_name, &sb, encoding, need_8bit_cte);
 fprintf(rev->diffopt.file, "%s\n", sb.buf);

 strbuf_release(&sb);

 shortlog_init(&log);
 log.wrap_lines = 1;
 log.wrap = MAIL_DEFAULT_WRAP;
 log.in1 = 2;
 log.in2 = 4;
 log.file = rev->diffopt.file;
 for (i = 0; i < nr; i++)
  shortlog_add_commit(&log, list[i]);

 shortlog_output(&log);


 if (origin)
  show_diffstat(rev, origin, head);

 if (rev->idiff_oid1) {
  fprintf_ln(rev->diffopt.file, "%s", rev->idiff_title);
  show_interdiff(rev, 0);
 }

 if (rev->rdiff1) {




  struct diff_options opts;
  diff_setup(&opts);
  opts.file = rev->diffopt.file;
  opts.use_color = rev->diffopt.use_color;
  diff_setup_done(&opts);
  fprintf_ln(rev->diffopt.file, "%s", rev->rdiff_title);
  show_range_diff(rev->rdiff1, rev->rdiff2,
    rev->creation_factor, 1, &opts);
 }
}

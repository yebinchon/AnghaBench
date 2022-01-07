
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; scalar_t__ len; } ;
struct shortlog {scalar_t__ user_format; int summary; scalar_t__ email; scalar_t__ committer; int abbrev; } ;
struct TYPE_2__ {int type; } ;
struct pretty_print_context {int print_email_subject; int output_encoding; TYPE_1__ date_mode; int abbrev; int fmt; int member_0; } ;
struct commit {int dummy; } ;


 int CMIT_FMT_USERFORMAT ;
 int DATE_NORMAL ;
 struct strbuf STRBUF_INIT ;
 int format_commit_message (struct commit*,char const*,struct strbuf*,struct pretty_print_context*) ;
 int get_log_output_encoding () ;
 int insert_one_record (struct shortlog*,char*,char*) ;
 int pretty_print_commit (struct pretty_print_context*,struct commit*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

void shortlog_add_commit(struct shortlog *log, struct commit *commit)
{
 struct strbuf author = STRBUF_INIT;
 struct strbuf oneline = STRBUF_INIT;
 struct pretty_print_context ctx = {0};
 const char *fmt;

 ctx.fmt = CMIT_FMT_USERFORMAT;
 ctx.abbrev = log->abbrev;
 ctx.print_email_subject = 1;
 ctx.date_mode.type = DATE_NORMAL;
 ctx.output_encoding = get_log_output_encoding();

 fmt = log->committer ?
  (log->email ? "%cN <%cE>" : "%cN") :
  (log->email ? "%aN <%aE>" : "%aN");

 format_commit_message(commit, fmt, &author, &ctx);
 if (!log->summary) {
  if (log->user_format)
   pretty_print_commit(&ctx, commit, &oneline);
  else
   format_commit_message(commit, "%s", &oneline, &ctx);
 }

 insert_one_record(log, author.buf, oneline.len ? oneline.buf : "<none>");

 strbuf_release(&author);
 strbuf_release(&oneline);
}

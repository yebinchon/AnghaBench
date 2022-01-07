
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_2__ {int file; } ;
struct rev_info {TYPE_1__ diffopt; int date_mode; int commit_format; } ;
struct pretty_print_context {int date_mode; int fmt; int member_0; } ;


 struct strbuf STRBUF_INIT ;
 int fprintf (int ,char*,char*) ;
 int get_log_output_encoding () ;
 int pp_user_info (struct pretty_print_context*,char*,struct strbuf*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void show_tagger(const char *buf, struct rev_info *rev)
{
 struct strbuf out = STRBUF_INIT;
 struct pretty_print_context pp = {0};

 pp.fmt = rev->commit_format;
 pp.date_mode = rev->date_mode;
 pp_user_info(&pp, "Tagger", &out, buf, get_log_output_encoding());
 fprintf(rev->diffopt.file, "%s", out.buf);
 strbuf_release(&out);
}

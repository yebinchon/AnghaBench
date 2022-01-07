
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct pretty_print_context {int member_0; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 int fprintf (int *,char*,char*,char*,char*) ;
 int free (char*) ;
 char* oid_to_hex (int *) ;
 int strbuf_release (struct strbuf*) ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static void log_commit(FILE *fp, char *fmt, const char *state,
         struct commit *commit)
{
 struct pretty_print_context pp = {0};
 struct strbuf commit_msg = STRBUF_INIT;
 char *label = xstrfmt(fmt, state);

 format_commit_message(commit, "%s", &commit_msg, &pp);

 fprintf(fp, "# %s: [%s] %s\n", label, oid_to_hex(&commit->object.oid),
  commit_msg.buf);

 strbuf_release(&commit_msg);
 free(label);
}

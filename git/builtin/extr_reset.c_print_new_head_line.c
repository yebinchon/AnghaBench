
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {scalar_t__ len; char* buf; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int CMIT_FMT_ONELINE ;
 int DEFAULT_ABBREV ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 char* find_unique_abbrev (int *,int ) ;
 int pp_commit_easy (int ,struct commit*,struct strbuf*) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void print_new_head_line(struct commit *commit)
{
 struct strbuf buf = STRBUF_INIT;

 printf(_("HEAD is now at %s"),
  find_unique_abbrev(&commit->object.oid, DEFAULT_ABBREV));

 pp_commit_easy(CMIT_FMT_ONELINE, commit, &buf);
 if (buf.len > 0)
  printf(" %s", buf.buf);
 putchar('\n');
 strbuf_release(&buf);
}

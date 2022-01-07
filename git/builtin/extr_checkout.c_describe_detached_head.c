
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int CMIT_FMT_ONELINE ;
 int DEFAULT_ABBREV ;
 struct strbuf STRBUF_INIT ;
 char* find_unique_abbrev (int *,int ) ;
 int fprintf (int ,char*,char const*,char*,char*) ;
 int parse_commit (struct commit*) ;
 int pp_commit_easy (int ,struct commit*,struct strbuf*) ;
 scalar_t__ print_sha1_ellipsis () ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void describe_detached_head(const char *msg, struct commit *commit)
{
 struct strbuf sb = STRBUF_INIT;

 if (!parse_commit(commit))
  pp_commit_easy(CMIT_FMT_ONELINE, commit, &sb);
 if (print_sha1_ellipsis()) {
  fprintf(stderr, "%s %s... %s\n", msg,
   find_unique_abbrev(&commit->object.oid, DEFAULT_ABBREV), sb.buf);
 } else {
  fprintf(stderr, "%s %s %s\n", msg,
   find_unique_abbrev(&commit->object.oid, DEFAULT_ABBREV), sb.buf);
 }
 strbuf_release(&sb);
}

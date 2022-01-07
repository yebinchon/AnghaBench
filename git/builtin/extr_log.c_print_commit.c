
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
typedef int FILE ;


 int CMIT_FMT_ONELINE ;
 struct strbuf STRBUF_INIT ;
 char* find_unique_abbrev (int *,int) ;
 int fprintf (int *,char*,char,char*,...) ;
 int pp_commit_easy (int ,struct commit*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void print_commit(char sign, struct commit *commit, int verbose,
    int abbrev, FILE *file)
{
 if (!verbose) {
  fprintf(file, "%c %s\n", sign,
         find_unique_abbrev(&commit->object.oid, abbrev));
 } else {
  struct strbuf buf = STRBUF_INIT;
  pp_commit_easy(CMIT_FMT_ONELINE, commit, &buf);
  fprintf(file, "%c %s %s\n", sign,
         find_unique_abbrev(&commit->object.oid, abbrev),
         buf.buf);
  strbuf_release(&buf);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int CMIT_FMT_ONELINE ;
 int DEFAULT_ABBREV ;
 int parse_commit (struct commit*) ;
 int pp_commit_easy (int ,struct commit*,struct strbuf*) ;
 int strbuf_add_unique_abbrev (struct strbuf*,int *,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static void describe_one_orphan(struct strbuf *sb, struct commit *commit)
{
 strbuf_addstr(sb, "  ");
 strbuf_add_unique_abbrev(sb, &commit->object.oid, DEFAULT_ABBREV);
 strbuf_addch(sb, ' ');
 if (!parse_commit(commit))
  pp_commit_easy(CMIT_FMT_ONELINE, commit, sb);
 strbuf_addch(sb, '\n');
}

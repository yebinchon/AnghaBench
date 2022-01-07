
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct branch_info {int path; int name; } ;


 int INTERPRET_BRANCH_LOCAL ;
 struct strbuf STRBUF_INIT ;
 int strbuf_branchname (struct strbuf*,int ,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_splice (struct strbuf*,int ,int ,char*,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int xstrdup (int ) ;

__attribute__((used)) static void setup_branch_path(struct branch_info *branch)
{
 struct strbuf buf = STRBUF_INIT;

 strbuf_branchname(&buf, branch->name, INTERPRET_BRANCH_LOCAL);
 if (strcmp(buf.buf, branch->name))
  branch->name = xstrdup(buf.buf);
 strbuf_splice(&buf, 0, 0, "refs/heads/", 11);
 branch->path = strbuf_detach(&buf, ((void*)0));
}

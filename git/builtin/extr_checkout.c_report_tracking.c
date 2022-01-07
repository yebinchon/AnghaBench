
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct branch_info {int name; } ;
struct branch {int dummy; } ;


 int AHEAD_BEHIND_FULL ;
 struct strbuf STRBUF_INIT ;
 struct branch* branch_get (int ) ;
 int format_tracking_info (struct branch*,struct strbuf*,int ) ;
 int fputs (int ,int ) ;
 int stdout ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void report_tracking(struct branch_info *new_branch_info)
{
 struct strbuf sb = STRBUF_INIT;
 struct branch *branch = branch_get(new_branch_info->name);

 if (!format_tracking_info(branch, &sb, AHEAD_BEHIND_FULL))
  return;
 fputs(sb.buf, stdout);
 strbuf_release(&sb);
}

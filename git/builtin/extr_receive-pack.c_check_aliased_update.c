
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int buf; } ;
struct command {int ref_name; } ;


 struct strbuf STRBUF_INIT ;
 int check_aliased_update_internal (struct command*,struct string_list*,char const*,int) ;
 int get_git_namespace () ;
 char* resolve_ref_unsafe (int ,int ,int *,int*) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void check_aliased_update(struct command *cmd, struct string_list *list)
{
 struct strbuf buf = STRBUF_INIT;
 const char *dst_name;
 int flag;

 strbuf_addf(&buf, "%s%s", get_git_namespace(), cmd->ref_name);
 dst_name = resolve_ref_unsafe(buf.buf, 0, ((void*)0), &flag);
 check_aliased_update_internal(cmd, list, dst_name, flag);
 strbuf_release(&buf);
}

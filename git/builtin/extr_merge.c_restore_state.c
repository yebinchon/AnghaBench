
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;


 int REFRESH_QUIET ;
 int RUN_GIT_CMD ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 char* oid_to_hex (struct object_id const*) ;
 int refresh_cache (int ) ;
 int reset_hard (struct object_id const*,int) ;
 int run_command_v_opt (char const**,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void restore_state(const struct object_id *head,
     const struct object_id *stash)
{
 struct strbuf sb = STRBUF_INIT;
 const char *args[] = { "stash", "apply", ((void*)0), ((void*)0) };

 if (is_null_oid(stash))
  return;

 reset_hard(head, 1);

 args[2] = oid_to_hex(stash);





 run_command_v_opt(args, RUN_GIT_CMD);

 strbuf_release(&sb);
 refresh_cache(REFRESH_QUIET);
}

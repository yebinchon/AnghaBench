
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct receive_hook_feed_state {int skip_broken; int buf; struct string_list const* push_options; struct command* cmd; } ;
struct command {int dummy; } ;


 scalar_t__ feed_receive_hook (struct receive_hook_feed_state*,int *,int *) ;
 int run_and_feed_hook (char const*,scalar_t__ (*) (struct receive_hook_feed_state*,int *,int *),struct receive_hook_feed_state*) ;
 int strbuf_init (int *,int ) ;
 int strbuf_release (int *) ;

__attribute__((used)) static int run_receive_hook(struct command *commands,
       const char *hook_name,
       int skip_broken,
       const struct string_list *push_options)
{
 struct receive_hook_feed_state state;
 int status;

 strbuf_init(&state.buf, 0);
 state.cmd = commands;
 state.skip_broken = skip_broken;
 if (feed_receive_hook(&state, ((void*)0), ((void*)0)))
  return 0;
 state.cmd = commands;
 state.push_options = push_options;
 status = run_and_feed_hook(hook_name, feed_receive_hook, &state);
 strbuf_release(&state.buf);
 return status;
}

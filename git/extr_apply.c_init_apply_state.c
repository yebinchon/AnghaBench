
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct apply_state {char const* prefix; int apply; char line_termination; int p_value; int squelch_whitespace_errors; int linenr; int root; int symlink_changes; int limit_by_name; int fn_table; int ws_ignore_action; int ws_error_action; int p_context; struct repository* repo; } ;


 int UINT_MAX ;
 scalar_t__ apply_default_ignorewhitespace ;
 scalar_t__ apply_default_whitespace ;
 int git_apply_config () ;
 int ignore_ws_none ;
 int memset (struct apply_state*,int ,int) ;
 scalar_t__ parse_ignorewhitespace_option (struct apply_state*,scalar_t__) ;
 scalar_t__ parse_whitespace_option (struct apply_state*,scalar_t__) ;
 int strbuf_init (int *,int ) ;
 int string_list_init (int *,int ) ;
 int warn_on_ws_error ;

int init_apply_state(struct apply_state *state,
       struct repository *repo,
       const char *prefix)
{
 memset(state, 0, sizeof(*state));
 state->prefix = prefix;
 state->repo = repo;
 state->apply = 1;
 state->line_termination = '\n';
 state->p_value = 1;
 state->p_context = UINT_MAX;
 state->squelch_whitespace_errors = 5;
 state->ws_error_action = warn_on_ws_error;
 state->ws_ignore_action = ignore_ws_none;
 state->linenr = 1;
 string_list_init(&state->fn_table, 0);
 string_list_init(&state->limit_by_name, 0);
 string_list_init(&state->symlink_changes, 0);
 strbuf_init(&state->root, 0);

 git_apply_config();
 if (apply_default_whitespace && parse_whitespace_option(state, apply_default_whitespace))
  return -1;
 if (apply_default_ignorewhitespace && parse_ignorewhitespace_option(state, apply_default_ignorewhitespace))
  return -1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_state {int ws_ignore_action; } ;


 int _ (char*) ;
 int error (int ,char const*) ;
 int ignore_ws_change ;
 int ignore_ws_none ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_ignorewhitespace_option(struct apply_state *state,
       const char *option)
{
 if (!option || !strcmp(option, "no") ||
     !strcmp(option, "false") || !strcmp(option, "never") ||
     !strcmp(option, "none")) {
  state->ws_ignore_action = ignore_ws_none;
  return 0;
 }
 if (!strcmp(option, "change")) {
  state->ws_ignore_action = ignore_ws_change;
  return 0;
 }
 return error(_("unrecognized whitespace ignore option '%s'"), option);
}

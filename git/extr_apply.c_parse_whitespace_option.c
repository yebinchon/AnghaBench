
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_state {void* ws_error_action; scalar_t__ squelch_whitespace_errors; } ;


 int _ (char*) ;
 void* correct_ws_error ;
 void* die_on_ws_error ;
 int error (int ,char const*) ;
 void* nowarn_ws_error ;
 int strcmp (char const*,char*) ;
 void* warn_on_ws_error ;

__attribute__((used)) static int parse_whitespace_option(struct apply_state *state, const char *option)
{
 if (!option) {
  state->ws_error_action = warn_on_ws_error;
  return 0;
 }
 if (!strcmp(option, "warn")) {
  state->ws_error_action = warn_on_ws_error;
  return 0;
 }
 if (!strcmp(option, "nowarn")) {
  state->ws_error_action = nowarn_ws_error;
  return 0;
 }
 if (!strcmp(option, "error")) {
  state->ws_error_action = die_on_ws_error;
  return 0;
 }
 if (!strcmp(option, "error-all")) {
  state->ws_error_action = die_on_ws_error;
  state->squelch_whitespace_errors = 0;
  return 0;
 }
 if (!strcmp(option, "strip") || !strcmp(option, "fix")) {
  state->ws_error_action = correct_ws_error;
  return 0;
 }




 return error(_("unrecognized whitespace option '%s'"), option);
}

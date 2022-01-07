
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_state {scalar_t__ apply; int ws_error_action; int whitespace_option; } ;


 int apply_default_whitespace ;
 int nowarn_ws_error ;
 int warn_on_ws_error ;

__attribute__((used)) static void set_default_whitespace_mode(struct apply_state *state)
{
 if (!state->whitespace_option && !apply_default_whitespace)
  state->ws_error_action = (state->apply ? warn_on_ws_error : nowarn_ws_error);
}

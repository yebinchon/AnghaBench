
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_state {int linenr; } ;


 int record_ws_error (struct apply_state*,unsigned int,char const*,int,int ) ;
 unsigned int ws_check (char const*,int,unsigned int) ;

__attribute__((used)) static void check_whitespace(struct apply_state *state,
        const char *line,
        int len,
        unsigned ws_rule)
{
 unsigned result = ws_check(line + 1, len - 1, ws_rule);

 record_ws_error(state, result, line + 1, len - 2, state->linenr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct apply_state* value; } ;
struct apply_state {int root; } ;


 int BUG_ON_OPT_NEG (int) ;
 int strbuf_addstr (int *,char const*) ;
 int strbuf_complete (int *,char) ;
 int strbuf_reset (int *) ;

__attribute__((used)) static int apply_option_parse_directory(const struct option *opt,
     const char *arg, int unset)
{
 struct apply_state *state = opt->value;

 BUG_ON_OPT_NEG(unset);

 strbuf_reset(&state->root);
 strbuf_addstr(&state->root, arg);
 strbuf_complete(&state->root, '/');
 return 0;
}

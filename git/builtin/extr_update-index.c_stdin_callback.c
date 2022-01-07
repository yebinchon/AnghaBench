
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int argc; } ;
struct option {int* value; int long_name; } ;
typedef enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int error (char*,int ) ;

__attribute__((used)) static enum parse_opt_result stdin_callback(
 struct parse_opt_ctx_t *ctx, const struct option *opt,
 const char *arg, int unset)
{
 int *read_from_stdin = opt->value;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);

 if (ctx->argc != 1)
  return error("option '%s' must be the last argument", opt->long_name);
 *read_from_stdin = 1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_opt_ctx_t {int argc; int argv; } ;
struct option {int* value; } ;
typedef enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;
struct TYPE_2__ {char* prefix; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 scalar_t__ active_cache_changed ;
 int do_reupdate (int,int ,char const*) ;
 int setup_work_tree () ;
 TYPE_1__* startup_info ;

__attribute__((used)) static enum parse_opt_result reupdate_callback(
 struct parse_opt_ctx_t *ctx, const struct option *opt,
 const char *arg, int unset)
{
 int *has_errors = opt->value;
 const char *prefix = startup_info->prefix;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);


 setup_work_tree();
 *has_errors = do_reupdate(ctx->argc, ctx->argv, prefix);
 if (*has_errors)
  active_cache_changed = 0;

 ctx->argv += ctx->argc - 1;
 ctx->argc = 1;
 return 0;
}

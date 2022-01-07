
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct parse_opt_ctx_t {char* opt; int argc; char** argv; scalar_t__ prefix; } ;
struct option {char const* long_name; struct strbuf* value; } ;
typedef enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;


 int BUG (char*) ;
 int BUG_ON_OPT_ARG (char const*) ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int have_message ;
 int is_absolute_path (char const*) ;
 char* prefix_filename (scalar_t__,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;

__attribute__((used)) static enum parse_opt_result option_read_message(struct parse_opt_ctx_t *ctx,
       const struct option *opt,
       const char *arg_not_used,
       int unset)
{
 struct strbuf *buf = opt->value;
 const char *arg;

 BUG_ON_OPT_ARG(arg_not_used);
 if (unset)
  BUG("-F cannot be negated");

 if (ctx->opt) {
  arg = ctx->opt;
  ctx->opt = ((void*)0);
 } else if (ctx->argc > 1) {
  ctx->argc--;
  arg = *++ctx->argv;
 } else
  return error(_("option `%s' requires a value"), opt->long_name);

 if (buf->len)
  strbuf_addch(buf, '\n');
 if (ctx->prefix && !is_absolute_path(arg))
  arg = prefix_filename(ctx->prefix, arg);
 if (strbuf_read_file(buf, arg, 0) < 0)
  return error(_("could not read file '%s'"), arg);
 have_message = 1;

 return 0;
}

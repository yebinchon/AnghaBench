
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct config_include_data {scalar_t__ depth; } ;
struct TYPE_2__ {char* path; char* name; } ;


 scalar_t__ MAX_INCLUDE_DEPTH ;
 int R_OK ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int access_or_die (char const*,int ,int ) ;
 TYPE_1__* cf ;
 int config_error_nonbool (char*) ;
 int die (int ,scalar_t__,char const*,char*) ;
 int error (int ,...) ;
 char* expand_user_path (char const*,int ) ;
 char* find_last_dir_sep (char*) ;
 int free (char*) ;
 int git_config_from_file (int ,char const*,struct config_include_data*) ;
 int git_config_include ;
 char* include_depth_advice ;
 int is_absolute_path (char const*) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int handle_path_include(const char *path, struct config_include_data *inc)
{
 int ret = 0;
 struct strbuf buf = STRBUF_INIT;
 char *expanded;

 if (!path)
  return config_error_nonbool("include.path");

 expanded = expand_user_path(path, 0);
 if (!expanded)
  return error(_("could not expand include path '%s'"), path);
 path = expanded;





 if (!is_absolute_path(path)) {
  char *slash;

  if (!cf || !cf->path)
   return error(_("relative config includes must come from files"));

  slash = find_last_dir_sep(cf->path);
  if (slash)
   strbuf_add(&buf, cf->path, slash - cf->path + 1);
  strbuf_addstr(&buf, path);
  path = buf.buf;
 }

 if (!access_or_die(path, R_OK, 0)) {
  if (++inc->depth > MAX_INCLUDE_DEPTH)
   die(_(include_depth_advice), MAX_INCLUDE_DEPTH, path,
       !cf ? "<unknown>" :
       cf->name ? cf->name :
       "the command line");
  ret = git_config_from_file(git_config_include, path, inc);
  inc->depth--;
 }
 strbuf_release(&buf);
 free(expanded);
 return ret;
}

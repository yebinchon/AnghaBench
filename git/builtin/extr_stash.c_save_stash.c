
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
typedef int ps ;


 int N_ (char*) ;
 struct option OPT_BOOL (unsigned char,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_SET_INT (char,char*,int*,int ,int) ;
 struct option OPT_STRING (char,char*,char const**,char*,int ) ;
 struct option OPT__QUIET (int*,int ) ;
 int PARSE_OPT_KEEP_DASHDASH ;
 struct strbuf STRBUF_INIT ;
 int do_push_stash (struct pathspec*,char const*,int,int,int,int) ;
 int git_stash_save_usage ;
 int memset (struct pathspec*,int ,int) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 char* strbuf_join_argv (struct strbuf*,int,char const**,char) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int save_stash(int argc, const char **argv, const char *prefix)
{
 int keep_index = -1;
 int patch_mode = 0;
 int include_untracked = 0;
 int quiet = 0;
 int ret = 0;
 const char *stash_msg = ((void*)0);
 struct pathspec ps;
 struct strbuf stash_msg_buf = STRBUF_INIT;
 struct option options[] = {
  OPT_BOOL('k', "keep-index", &keep_index,
    N_("keep index")),
  OPT_BOOL('p', "patch", &patch_mode,
    N_("stash in patch mode")),
  OPT__QUIET(&quiet, N_("quiet mode")),
  OPT_BOOL('u', "include-untracked", &include_untracked,
    N_("include untracked files in stash")),
  OPT_SET_INT('a', "all", &include_untracked,
       N_("include ignore files"), 2),
  OPT_STRING('m', "message", &stash_msg, "message",
      N_("stash message")),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options,
        git_stash_save_usage,
        PARSE_OPT_KEEP_DASHDASH);

 if (argc)
  stash_msg = strbuf_join_argv(&stash_msg_buf, argc, argv, ' ');

 memset(&ps, 0, sizeof(ps));
 ret = do_push_stash(&ps, stash_msg, quiet, keep_index,
       patch_mode, include_untracked);

 strbuf_release(&stash_msg_buf);
 return ret;
}

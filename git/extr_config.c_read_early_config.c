
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct config_options {int respect_includes; int git_dir; int commondir; int member_0; } ;
typedef int config_fn_t ;


 struct strbuf STRBUF_INIT ;
 int config_with_options (int ,void*,int *,struct config_options*) ;
 int discover_git_directory (struct strbuf*,struct strbuf*) ;
 int get_git_common_dir () ;
 int get_git_dir () ;
 scalar_t__ have_git_dir () ;
 int strbuf_release (struct strbuf*) ;

void read_early_config(config_fn_t cb, void *data)
{
 struct config_options opts = {0};
 struct strbuf commondir = STRBUF_INIT;
 struct strbuf gitdir = STRBUF_INIT;

 opts.respect_includes = 1;

 if (have_git_dir()) {
  opts.commondir = get_git_common_dir();
  opts.git_dir = get_git_dir();
 } else if (!discover_git_directory(&commondir, &gitdir)) {
  opts.commondir = commondir.buf;
  opts.git_dir = gitdir.buf;
 }

 config_with_options(cb, data, ((void*)0), &opts);

 strbuf_release(&commondir);
 strbuf_release(&gitdir);
}

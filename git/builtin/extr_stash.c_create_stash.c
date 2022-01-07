
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stash_info {int w_commit; } ;
struct pathspec {int dummy; } ;
typedef int ps ;


 struct strbuf STRBUF_INIT ;
 int check_changes_tracked_files (struct pathspec*) ;
 int do_create_stash (struct pathspec*,struct strbuf*,int ,int ,struct stash_info*,int *,int ) ;
 int memset (struct pathspec*,int ,int) ;
 int oid_to_hex (int *) ;
 int printf_ln (char*,int ) ;
 int strbuf_join_argv (struct strbuf*,int,char const**,char) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int create_stash(int argc, const char **argv, const char *prefix)
{
 int ret = 0;
 struct strbuf stash_msg_buf = STRBUF_INIT;
 struct stash_info info;
 struct pathspec ps;


 strbuf_join_argv(&stash_msg_buf, argc - 1, ++argv, ' ');

 memset(&ps, 0, sizeof(ps));
 if (!check_changes_tracked_files(&ps))
  return 0;

 ret = do_create_stash(&ps, &stash_msg_buf, 0, 0, &info,
         ((void*)0), 0);
 if (!ret)
  printf_ln("%s", oid_to_hex(&info.w_commit));

 strbuf_release(&stash_msg_buf);
 return ret;
}

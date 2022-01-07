
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int recursive; } ;
struct path_exists_context {TYPE_1__ pathspec; struct archiver_args* args; } ;
struct archiver_args {int tree; int repo; } ;


 int clear_pathspec (TYPE_1__*) ;
 int parse_pathspec (TYPE_1__*,int ,int ,char*,char const**) ;
 int read_tree_recursive (int ,int ,char*,int ,int ,TYPE_1__*,int ,struct path_exists_context*) ;
 int reject_entry ;

__attribute__((used)) static int path_exists(struct archiver_args *args, const char *path)
{
 const char *paths[] = { path, ((void*)0) };
 struct path_exists_context ctx;
 int ret;

 ctx.args = args;
 parse_pathspec(&ctx.pathspec, 0, 0, "", paths);
 ctx.pathspec.recursive = 1;
 ret = read_tree_recursive(args->repo, args->tree, "",
      0, 0, &ctx.pathspec,
      reject_entry, &ctx);
 clear_pathspec(&ctx.pathspec);
 return ret != 0;
}

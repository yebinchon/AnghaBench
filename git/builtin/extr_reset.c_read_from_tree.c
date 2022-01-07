
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int override_submodule_config; } ;
struct diff_options {int* format_callback_data; int pathspec; int repo; TYPE_1__ flags; int format_callback; int output_format; } ;
typedef int opt ;


 int DIFF_FORMAT_CALLBACK ;
 int clear_pathspec (int *) ;
 int copy_pathspec (int *,struct pathspec const*) ;
 int diff_flush (struct diff_options*) ;
 int diffcore_std (struct diff_options*) ;
 scalar_t__ do_diff_cache (struct object_id*,struct diff_options*) ;
 int memset (struct diff_options*,int ,int) ;
 int the_repository ;
 int update_index_from_diff ;

__attribute__((used)) static int read_from_tree(const struct pathspec *pathspec,
     struct object_id *tree_oid,
     int intent_to_add)
{
 struct diff_options opt;

 memset(&opt, 0, sizeof(opt));
 copy_pathspec(&opt.pathspec, pathspec);
 opt.output_format = DIFF_FORMAT_CALLBACK;
 opt.format_callback = update_index_from_diff;
 opt.format_callback_data = &intent_to_add;
 opt.flags.override_submodule_config = 1;
 opt.repo = the_repository;

 if (do_diff_cache(tree_oid, &opt))
  return 1;
 diffcore_std(&opt);
 diff_flush(&opt);
 clear_pathspec(&opt.pathspec);

 return 0;
}

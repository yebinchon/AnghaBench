
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct split_commit_graph_opts {int dummy; } ;
typedef enum commit_graph_write_flags { ____Placeholder_commit_graph_write_flags } commit_graph_write_flags ;


 struct string_list STRING_LIST_INIT_DUP ;
 int add_ref_to_list ;
 int for_each_ref (int ,struct string_list*) ;
 int string_list_clear (struct string_list*,int ) ;
 int write_commit_graph (char const*,int *,struct string_list*,int,struct split_commit_graph_opts const*) ;

int write_commit_graph_reachable(const char *obj_dir,
     enum commit_graph_write_flags flags,
     const struct split_commit_graph_opts *split_opts)
{
 struct string_list list = STRING_LIST_INIT_DUP;
 int result;

 for_each_ref(add_ref_to_list, &list);
 result = write_commit_graph(obj_dir, ((void*)0), &list,
        flags, split_opts);

 string_list_clear(&list, 0);
 return result;
}

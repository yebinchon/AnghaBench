
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct repository {int dummy; } ;


 int free (void*) ;
 void* get_tree_descriptor (struct repository*,struct tree_desc*,char const*) ;
 int merge_tree_usage ;
 int merge_trees (struct tree_desc*,char*) ;
 int show_result () ;
 struct repository* the_repository ;
 int usage (int ) ;

int cmd_merge_tree(int argc, const char **argv, const char *prefix)
{
 struct repository *r = the_repository;
 struct tree_desc t[3];
 void *buf1, *buf2, *buf3;

 if (argc != 4)
  usage(merge_tree_usage);

 buf1 = get_tree_descriptor(r, t+0, argv[1]);
 buf2 = get_tree_descriptor(r, t+1, argv[2]);
 buf3 = get_tree_descriptor(r, t+2, argv[3]);
 merge_trees(t, "");
 free(buf1);
 free(buf2);
 free(buf3);

 show_result();
 return 0;
}

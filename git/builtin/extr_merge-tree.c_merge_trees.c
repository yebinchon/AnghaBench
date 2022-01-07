
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct traverse_info {int fn; } ;


 int setup_traverse_info (struct traverse_info*,char const*) ;
 int the_index ;
 int threeway_callback ;
 int traverse_trees (int *,int,struct tree_desc*,struct traverse_info*) ;

__attribute__((used)) static void merge_trees(struct tree_desc t[3], const char *base)
{
 struct traverse_info info;

 setup_traverse_info(&info, base);
 info.fn = threeway_callback;
 traverse_trees(&the_index, 3, t, &info);
}

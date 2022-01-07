
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_filter {scalar_t__ with_commit_tag_algo; } ;
struct contains_cache {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 scalar_t__ CONTAINS_YES ;
 scalar_t__ contains_tag_algo (struct commit*,struct commit_list*,struct contains_cache*) ;
 int is_descendant_of (struct commit*,struct commit_list*) ;

int commit_contains(struct ref_filter *filter, struct commit *commit,
      struct commit_list *list, struct contains_cache *cache)
{
 if (filter->with_commit_tag_algo)
  return contains_tag_algo(commit, list, cache) == CONTAINS_YES;
 return is_descendant_of(commit, list);
}

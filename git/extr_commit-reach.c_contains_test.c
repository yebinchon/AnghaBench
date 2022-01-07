
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct contains_cache {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {scalar_t__ generation; } ;
typedef enum contains_result { ____Placeholder_contains_result } contains_result ;


 int CONTAINS_NO ;
 int CONTAINS_UNKNOWN ;
 int CONTAINS_YES ;
 int* contains_cache_at (struct contains_cache*,struct commit*) ;
 scalar_t__ in_commit_list (struct commit_list const*,struct commit*) ;
 int parse_commit_or_die (struct commit*) ;

__attribute__((used)) static enum contains_result contains_test(struct commit *candidate,
       const struct commit_list *want,
       struct contains_cache *cache,
       uint32_t cutoff)
{
 enum contains_result *cached = contains_cache_at(cache, candidate);


 if (*cached)
  return *cached;


 if (in_commit_list(want, candidate)) {
  *cached = CONTAINS_YES;
  return CONTAINS_YES;
 }


 parse_commit_or_die(candidate);

 if (candidate->generation < cutoff)
  return CONTAINS_NO;

 return CONTAINS_UNKNOWN;
}

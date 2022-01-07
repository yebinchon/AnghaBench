
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry_ {int dummy; } ;
struct cache_ {int dummy; } ;


 int TRACE_IN (struct cache_entry_* (*) (struct cache_*,char const*)) ;
 int TRACE_OUT (struct cache_entry_* (*) (struct cache_*,char const*)) ;
 struct cache_entry_** find_cache_entry_p (struct cache_*,char const*) ;

struct cache_entry_ *
find_cache_entry(struct cache_ *the_cache, const char *entry_name)
{
 struct cache_entry_ **result;

 TRACE_IN(find_cache_entry);
 result = find_cache_entry_p(the_cache, entry_name);

 if (result == ((void*)0)) {
  TRACE_OUT(find_cache_entry);
  return (((void*)0));
 } else {
  TRACE_OUT(find_cache_entry);
  return (*result);
 }
}

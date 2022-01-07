
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cache_policy_t { ____Placeholder_cache_policy_t } cache_policy_t ;


 int CPT_FIFO ;
 int CPT_LFU ;
 int CPT_LRU ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static enum cache_policy_t
get_policy(const char *str)
{

 if (strcmp(str, "fifo") == 0)
  return (CPT_FIFO);
 else if (strcmp(str, "lru") == 0)
  return (CPT_LRU);
 else if (strcmp(str, "lfu") == 0)
  return (CPT_LFU);

 return (-1);
}

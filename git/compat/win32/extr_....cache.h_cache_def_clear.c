
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_def {int path; } ;


 int strbuf_release (int *) ;

__attribute__((used)) static inline void cache_def_clear(struct cache_def *cache)
{
 strbuf_release(&cache->path);
}

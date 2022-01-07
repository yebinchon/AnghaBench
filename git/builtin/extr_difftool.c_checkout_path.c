
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct checkout {int dummy; } ;
struct cache_entry {int dummy; } ;


 int checkout_entry (struct cache_entry*,struct checkout const*,int *,int *) ;
 int discard_cache_entry (struct cache_entry*) ;
 struct cache_entry* make_transient_cache_entry (unsigned int,struct object_id*,char const*,int ) ;

__attribute__((used)) static int checkout_path(unsigned mode, struct object_id *oid,
    const char *path, const struct checkout *state)
{
 struct cache_entry *ce;
 int ret;

 ce = make_transient_cache_entry(mode, oid, path, 0);
 ret = checkout_entry(ce, state, ((void*)0), ((void*)0));

 discard_cache_entry(ce);
 return ret;
}

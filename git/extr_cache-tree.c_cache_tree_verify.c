
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct index_state {int cache_tree; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_release (struct strbuf*) ;
 int verify_one (struct repository*,struct index_state*,int ,struct strbuf*) ;

void cache_tree_verify(struct repository *r, struct index_state *istate)
{
 struct strbuf path = STRBUF_INIT;

 if (!istate->cache_tree)
  return;
 verify_one(r, istate, istate->cache_tree, &path);
 strbuf_release(&path);
}

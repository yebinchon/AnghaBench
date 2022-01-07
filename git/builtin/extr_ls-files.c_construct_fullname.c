
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int submodule_prefix; } ;
struct cache_entry {int name; } ;


 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void construct_fullname(struct strbuf *out, const struct repository *repo,
          const struct cache_entry *ce)
{
 strbuf_reset(out);
 if (repo->submodule_prefix)
  strbuf_addstr(out, repo->submodule_prefix);
 strbuf_addstr(out, ce->name);
}

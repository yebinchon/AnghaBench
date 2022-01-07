
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;
struct blame_origin {int refcnt; int next; struct commit* commit; } ;


 int FLEX_ALLOC_STR (struct blame_origin*,char const*,char const*) ;
 int get_blame_suspects (struct commit*) ;
 int set_blame_suspects (struct commit*,struct blame_origin*) ;

__attribute__((used)) static struct blame_origin *make_origin(struct commit *commit, const char *path)
{
 struct blame_origin *o;
 FLEX_ALLOC_STR(o, path, path);
 o->commit = commit;
 o->refcnt = 1;
 o->next = get_blame_suspects(commit);
 set_blame_suspects(commit, o);
 return o;
}

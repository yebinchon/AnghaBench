
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;
struct blame_origin {struct blame_origin* next; int path; } ;


 struct blame_origin* blame_origin_incref (struct blame_origin*) ;
 void* get_blame_suspects (struct commit*) ;
 struct blame_origin* make_origin (struct commit*,char const*) ;
 int set_blame_suspects (struct commit*,struct blame_origin*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct blame_origin *get_origin(struct commit *commit, const char *path)
{
 struct blame_origin *o, *l;

 for (o = get_blame_suspects(commit), l = ((void*)0); o; l = o, o = o->next) {
  if (!strcmp(o->path, path)) {

   if (l) {
    l->next = o->next;
    o->next = get_blame_suspects(commit);
    set_blame_suspects(commit, o);
   }
   return blame_origin_incref(o);
  }
 }
 return make_origin(commit, path);
}

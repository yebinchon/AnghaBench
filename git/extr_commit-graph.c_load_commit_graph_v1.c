
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit_graph {char const* obj_dir; } ;


 int free (char*) ;
 char* get_commit_graph_filename (char const*) ;
 struct commit_graph* load_commit_graph_one (char*) ;

__attribute__((used)) static struct commit_graph *load_commit_graph_v1(struct repository *r, const char *obj_dir)
{
 char *graph_name = get_commit_graph_filename(obj_dir);
 struct commit_graph *g = load_commit_graph_one(graph_name);
 free(graph_name);

 if (g)
  g->obj_dir = obj_dir;

 return g;
}

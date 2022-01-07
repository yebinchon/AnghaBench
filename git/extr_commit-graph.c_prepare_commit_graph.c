
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int core_commit_graph; } ;
struct repository {TYPE_2__* objects; TYPE_1__ settings; scalar_t__ commit_graph_disabled; } ;
struct object_directory {int path; struct object_directory* next; } ;
struct TYPE_4__ {int commit_graph_attempted; int commit_graph; struct object_directory* odb; } ;


 int GIT_TEST_COMMIT_GRAPH ;
 int GIT_TEST_COMMIT_GRAPH_DIE_ON_LOAD ;
 int commit_graph_compatible (struct repository*) ;
 int die (char*,int ) ;
 scalar_t__ git_env_bool (int ,int ) ;
 int prepare_alt_odb (struct repository*) ;
 int prepare_commit_graph_one (struct repository*,int ) ;
 int prepare_repo_settings (struct repository*) ;

__attribute__((used)) static int prepare_commit_graph(struct repository *r)
{
 struct object_directory *odb;





 if (r->commit_graph_disabled)
  return 0;

 if (r->objects->commit_graph_attempted)
  return !!r->objects->commit_graph;
 r->objects->commit_graph_attempted = 1;

 if (git_env_bool(GIT_TEST_COMMIT_GRAPH_DIE_ON_LOAD, 0))
  die("dying as requested by the '%s' variable on commit-graph load!",
      GIT_TEST_COMMIT_GRAPH_DIE_ON_LOAD);

 prepare_repo_settings(r);

 if (!git_env_bool(GIT_TEST_COMMIT_GRAPH, 0) &&
     r->settings.core_commit_graph != 1)






  return 0;

 if (!commit_graph_compatible(r))
  return 0;

 prepare_alt_odb(r);
 for (odb = r->objects->odb;
      !r->objects->commit_graph && odb;
      odb = odb->next)
  prepare_commit_graph_one(r, odb->path);
 return !!r->objects->commit_graph;
}

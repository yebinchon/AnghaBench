
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit {int * parents; } ;
struct TYPE_2__ {int parsed_objects; } ;


 int free_commit_buffer (int ,struct commit*) ;
 int free_commit_list (int *) ;
 TYPE_1__* the_repository ;

__attribute__((used)) static void finish_commit(struct commit *commit)
{
 if (commit->parents) {
  free_commit_list(commit->parents);
  commit->parents = ((void*)0);
 }
 free_commit_buffer(the_repository->parsed_objects,
      commit);
}

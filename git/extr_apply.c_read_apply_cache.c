
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apply_state {TYPE_1__* repo; scalar_t__ index_file; } ;
struct TYPE_2__ {int index; } ;


 int get_git_dir () ;
 int read_index_from (int ,scalar_t__,int ) ;
 int repo_read_index (TYPE_1__*) ;

__attribute__((used)) static int read_apply_cache(struct apply_state *state)
{
 if (state->index_file)
  return read_index_from(state->repo->index, state->index_file,
           get_git_dir());
 else
  return repo_read_index(state->repo);
}

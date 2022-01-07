
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* permutation; } ;
typedef TYPE_1__ pattern_t ;


 int NUM_CHUNKS ;
 int * chunk_sems ;
 int exit (int) ;
 scalar_t__ leader_syncs ;
 int my_sync (int ) ;
 int outfd ;
 int perror (char*) ;
 scalar_t__ phase ;
 int sem_post (int *) ;
 int write_chunk (TYPE_1__*,int,int ) ;

__attribute__((used)) static void*
leader(void* data)
{
  int perm_idx;
  pattern_t* p_pat = (pattern_t*)data;

  for(perm_idx = 0; perm_idx < NUM_CHUNKS; perm_idx++)
  {
    int chunk_idx = p_pat->permutation[perm_idx];
    if (perm_idx == NUM_CHUNKS / 2 && phase == leader_syncs){

      my_sync(outfd);
    }

    write_chunk(p_pat, chunk_idx, 0);







  }
  return 0;
}

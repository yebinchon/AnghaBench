#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* permutation; } ;
typedef  TYPE_1__ pattern_t ;

/* Variables and functions */
 int NUM_CHUNKS ; 
 int /*<<< orphan*/ * chunk_sems ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ leader_syncs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ phase ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void*
FUNC5(void* data)
{
  int perm_idx;
  pattern_t* p_pat = (pattern_t*)data;
/*  printf("Leader started\n");*/
  for(perm_idx = 0; perm_idx < NUM_CHUNKS; perm_idx++)
  {
    int chunk_idx = p_pat->permutation[perm_idx];
    if (perm_idx == NUM_CHUNKS / 2 && phase == leader_syncs){
      //printf("about to sync in leader\n");
      FUNC1(outfd);
    }
    //printf("about to write chunk in leader\n");
    FUNC4(p_pat, chunk_idx, 0);
    //printf("about to post semaphore\n");
#if USE_THREADS
    if (sem_post(&chunk_sems[chunk_idx]) == -1){
      perror("sem_post");
      exit(1);
    }
#endif
  }
  return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int thread_num; TYPE_2__* pat; } ;
typedef  TYPE_1__ thread_data_t ;
struct TYPE_4__ {int* permutation; } ;

/* Variables and functions */
 int NUM_CHUNKS ; 
 int NUM_THREADS ; 
 int /*<<< orphan*/ ** chunk_sems ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void*
FUNC6(void* args)
{
  int perm_idx, thread_num;
  thread_data_t* data;

  data = (thread_data_t*)args;
  thread_num = data->thread_num;

  for(perm_idx = 0; perm_idx < NUM_CHUNKS; perm_idx++)
  {
    int chunk_idx = data->pat->permutation[perm_idx];
    /* Acquire the semaphore, if necessary */
    if (thread_num > 0) {
      if (-1 == FUNC4(&chunk_sems[thread_num - 1][chunk_idx])){
        FUNC2("sem_wait");
        FUNC0(1);
      }
    }
    /* Write the data */
    FUNC5(data->pat, chunk_idx, thread_num);
    /* Sync, if we are an even thread */
    if ((thread_num % 2) == 0)
      FUNC1(outfd);
    /* Post the final semaphore, if necessary */
    if (thread_num < NUM_THREADS - 1) {
      if (FUNC3(&chunk_sems[thread_num][chunk_idx]) == -1){
        FUNC2("sem_post");
        FUNC0(1);
      }
    }
  }
  return 0;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_num; TYPE_2__* pat; } ;
typedef TYPE_1__ thread_data_t ;
struct TYPE_4__ {int* permutation; } ;


 int NUM_CHUNKS ;
 int NUM_THREADS ;
 int ** chunk_sems ;
 int exit (int) ;
 int my_sync (int ) ;
 int outfd ;
 int perror (char*) ;
 int sem_post (int *) ;
 int sem_wait (int *) ;
 int write_chunk (TYPE_2__*,int,int) ;

__attribute__((used)) static void*
worker(void* args)
{
  int perm_idx, thread_num;
  thread_data_t* data;

  data = (thread_data_t*)args;
  thread_num = data->thread_num;

  for(perm_idx = 0; perm_idx < NUM_CHUNKS; perm_idx++)
  {
    int chunk_idx = data->pat->permutation[perm_idx];

    if (thread_num > 0) {
      if (-1 == sem_wait(&chunk_sems[thread_num - 1][chunk_idx])){
        perror("sem_wait");
        exit(1);
      }
    }

    write_chunk(data->pat, chunk_idx, thread_num);

    if ((thread_num % 2) == 0)
      my_sync(outfd);

    if (thread_num < NUM_THREADS - 1) {
      if (sem_post(&chunk_sems[thread_num][chunk_idx]) == -1){
        perror("sem_post");
        exit(1);
      }
    }
  }
  return 0;
}

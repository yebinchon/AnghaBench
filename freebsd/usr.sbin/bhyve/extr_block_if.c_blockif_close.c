
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockif_ctxt {scalar_t__ bc_magic; int bc_closing; int bc_fd; int * bc_btid; int bc_cond; int bc_mtx; } ;


 int BLOCKIF_NUMTHR ;
 scalar_t__ BLOCKIF_SIG ;
 int assert (int) ;
 int close (int ) ;
 int free (struct blockif_ctxt*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
blockif_close(struct blockif_ctxt *bc)
{
 void *jval;
 int i;

 assert(bc->bc_magic == BLOCKIF_SIG);




 pthread_mutex_lock(&bc->bc_mtx);
 bc->bc_closing = 1;
 pthread_mutex_unlock(&bc->bc_mtx);
 pthread_cond_broadcast(&bc->bc_cond);
 for (i = 0; i < BLOCKIF_NUMTHR; i++)
  pthread_join(bc->bc_btid[i], &jval);






 bc->bc_magic = 0;
 close(bc->bc_fd);
 free(bc);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_env {int sockfd; int queue; } ;


 int TRACE_IN (void (*) (struct runtime_env*)) ;
 int TRACE_OUT (void (*) (struct runtime_env*)) ;
 int close (int ) ;
 int free (struct runtime_env*) ;

__attribute__((used)) static void
destroy_runtime_env(struct runtime_env *env)
{
 TRACE_IN(destroy_runtime_env);
 close(env->queue);
 close(env->sockfd);
 free(env);
 TRACE_OUT(destroy_runtime_env);
}

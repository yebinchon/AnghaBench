
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct processing_thread_args {int the_configuration; int the_runtime_env; int the_cache; } ;
typedef int sigset_t ;


 int LOG_ERR_1 (char*,char*) ;
 int SIGPIPE ;
 int SIG_BLOCK ;
 int TRACE_MSG (char*) ;
 int free (struct processing_thread_args*) ;
 int processing_loop (int ,int ,int ) ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void *
processing_thread(void *data)
{
 struct processing_thread_args *args;
 sigset_t new;

 TRACE_MSG("=> processing_thread");
 args = (struct processing_thread_args *)data;

 sigemptyset(&new);
 sigaddset(&new, SIGPIPE);
 if (pthread_sigmask(SIG_BLOCK, &new, ((void*)0)) != 0)
  LOG_ERR_1("processing thread",
   "thread can't block the SIGPIPE signal");

 processing_loop(args->the_cache, args->the_runtime_env,
  args->the_configuration);
 free(args);
 TRACE_MSG("<= processing_thread");

 return (((void*)0));
}

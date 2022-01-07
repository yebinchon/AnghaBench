
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_completion {int dummy; } ;


 int EINVAL ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int M_DEVBUF ;
 int M_FIRSTFIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int OPAL_ASYNC_COMP ;
 int * async_token_pool ;
 int completions ;
 int malloc (int,int ,int) ;
 int opal_handle_async_completion ;
 int * vmem_create (char*,int ,int,int,int,int) ;

int
opal_init_async_tokens(int count)
{

 if (async_token_pool != ((void*)0))
  return (EINVAL);

 async_token_pool = vmem_create("OPAL Async", 0, count, 1, 1,
     M_WAITOK | M_FIRSTFIT);
 completions = malloc(count * sizeof(struct async_completion),
     M_DEVBUF, M_WAITOK | M_ZERO);

 EVENTHANDLER_REGISTER(OPAL_ASYNC_COMP, opal_handle_async_completion,
     ((void*)0), EVENTHANDLER_PRI_ANY);

 return (0);
}

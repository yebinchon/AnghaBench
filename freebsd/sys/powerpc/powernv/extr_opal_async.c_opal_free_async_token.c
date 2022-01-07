
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_token_pool ;
 int vmem_free (int ,int,int) ;

void
opal_free_async_token(int token)
{

 vmem_free(async_token_pool, token, 1);
}

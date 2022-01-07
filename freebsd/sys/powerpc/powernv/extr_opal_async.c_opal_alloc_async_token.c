
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vmem_addr_t ;
struct TYPE_2__ {int completed; } ;


 int M_FIRSTFIT ;
 int M_WAITOK ;
 int async_token_pool ;
 TYPE_1__* completions ;
 int vmem_alloc (int ,int,int,size_t*) ;

int
opal_alloc_async_token(void)
{
 vmem_addr_t token;

 vmem_alloc(async_token_pool, 1, M_FIRSTFIT | M_WAITOK, &token);
 completions[token].completed = 0;

 return (token);
}

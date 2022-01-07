
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_state {int dummy; } ;


 struct alloc_state* xcalloc (int,int) ;

struct alloc_state *allocate_alloc_state(void)
{
 return xcalloc(1, sizeof(struct alloc_state));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;
typedef int ng_item_fn ;
typedef int hook_p ;


 int NG_NOFLAGS ;
 int ng_send_fn1 (int ,int ,int *,void*,int,int ) ;

int
ng_send_fn(node_p node, hook_p hook, ng_item_fn *fn, void * arg1, int arg2)
{

 return ng_send_fn1(node, hook, fn, arg1, arg2, NG_NOFLAGS);
}

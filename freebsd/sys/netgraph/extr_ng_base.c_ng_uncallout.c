
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {int * c_arg; int * c_func; } ;
typedef int * node_p ;
typedef int * item_p ;


 int KASSERT (int ,char*) ;
 int * NGI_NODE (int *) ;
 int NG_FREE_ITEM (int *) ;
 int callout_stop (struct callout*) ;
 int ng_callout_trampoline ;

int
ng_uncallout(struct callout *c, node_p node)
{
 item_p item;
 int rval;

 KASSERT(c != ((void*)0), ("ng_uncallout: NULL callout"));
 KASSERT(node != ((void*)0), ("ng_uncallout: NULL node"));

 rval = callout_stop(c);
 item = c->c_arg;

 if ((rval > 0) && (c->c_func == &ng_callout_trampoline) &&
     (item != ((void*)0)) && (NGI_NODE(item) == node)) {





  NG_FREE_ITEM(item);
 }
 c->c_arg = ((void*)0);





 return (rval > 0);
}

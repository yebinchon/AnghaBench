
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int watch ;
struct xs_watch {int node; } ;
struct TYPE_2__ {int registered_watches_lock; int registered_watches; } ;


 int EEXIST ;
 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct xs_watch*,int ) ;
 int LIST_REMOVE (struct xs_watch*,int ) ;
 int * find_watch (char*) ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sprintf (char*,char*,long) ;
 TYPE_1__ xs ;
 int xs_watch (int ,char*) ;

int
xs_register_watch(struct xs_watch *watch)
{

 char token[sizeof(watch) * 2 + 1];
 int error;

 sprintf(token, "%lX", (long)watch);

 mtx_lock(&xs.registered_watches_lock);
 KASSERT(find_watch(token) == ((void*)0), ("watch already registered"));
 LIST_INSERT_HEAD(&xs.registered_watches, watch, list);
 mtx_unlock(&xs.registered_watches_lock);

 error = xs_watch(watch->node, token);


 if (error == EEXIST)
  error = 0;

 if (error != 0) {
  mtx_lock(&xs.registered_watches_lock);
  LIST_REMOVE(watch, list);
  mtx_unlock(&xs.registered_watches_lock);
 }

 return (error);
}

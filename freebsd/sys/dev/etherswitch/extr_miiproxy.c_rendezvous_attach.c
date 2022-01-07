
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* callback ) (int ,struct rendezvous_entry*) ;} ;
struct TYPE_3__ {int (* callback ) (int ,struct rendezvous_entry*) ;} ;
struct rendezvous_entry {TYPE_2__ proxy; TYPE_1__ target; } ;
struct rendezvous_endpoint {int * callback; int * device; } ;


 int RENDEZVOUS_ATTACH ;
 int RENDEZVOUS_DETACH ;
 int stub1 (int ,struct rendezvous_entry*) ;
 int stub2 (int ,struct rendezvous_entry*) ;
 int stub3 (int ,struct rendezvous_entry*) ;

__attribute__((used)) static int
rendezvous_attach(struct rendezvous_entry *e, struct rendezvous_endpoint *ep)
{
 int error;

 error = e->proxy.callback(RENDEZVOUS_ATTACH, e);
 if (error == 0) {
  error = e->target.callback(RENDEZVOUS_ATTACH, e);
  if (error != 0) {
   e->proxy.callback(RENDEZVOUS_DETACH, e);
   ep->device = ((void*)0);
   ep->callback = ((void*)0);
  }
 }
 return (error);
}

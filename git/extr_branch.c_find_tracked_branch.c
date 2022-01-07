
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * src; } ;
struct tracking {int matches; TYPE_1__ spec; int * src; int remote; } ;
struct remote {int name; } ;


 int FREE_AND_NULL (int *) ;
 int free (int *) ;
 int remote_find_tracking (struct remote*,TYPE_1__*) ;

__attribute__((used)) static int find_tracked_branch(struct remote *remote, void *priv)
{
 struct tracking *tracking = priv;

 if (!remote_find_tracking(remote, &tracking->spec)) {
  if (++tracking->matches == 1) {
   tracking->src = tracking->spec.src;
   tracking->remote = remote->name;
  } else {
   free(tracking->spec.src);
   FREE_AND_NULL(tracking->src);
  }
  tracking->spec.src = ((void*)0);
 }

 return 0;
}

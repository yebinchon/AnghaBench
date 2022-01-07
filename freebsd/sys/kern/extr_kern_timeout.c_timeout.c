
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timeout_t ;
struct callout_handle {struct callout* callout; } ;
struct callout_cpu {int cc_callfree; } ;
struct callout {int dummy; } ;
struct TYPE_2__ {int sle; } ;


 struct callout_cpu* CC_CPU (int ) ;
 int CC_LOCK (struct callout_cpu*) ;
 int CC_UNLOCK (struct callout_cpu*) ;
 struct callout* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 TYPE_1__ c_links ;
 int callout_reset (struct callout*,int,int *,void*) ;
 int panic (char*) ;
 int timeout_cpu ;

struct callout_handle
timeout(timeout_t *ftn, void *arg, int to_ticks)
{
 struct callout_cpu *cc;
 struct callout *new;
 struct callout_handle handle;

 cc = CC_CPU(timeout_cpu);
 CC_LOCK(cc);

 new = SLIST_FIRST(&cc->cc_callfree);
 if (new == ((void*)0))

  panic("timeout table full");
 SLIST_REMOVE_HEAD(&cc->cc_callfree, c_links.sle);
 callout_reset(new, to_ticks, ftn, arg);
 handle.callout = new;
 CC_UNLOCK(cc);

 return (handle);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct callout_list {int dummy; } ;
struct callout_cpu {int cc_inited; int cc_callfree; struct callout* cc_callout; int cc_ktr_event_name; int cc_firstevent; int cc_expireq; int * cc_callwheel; int cc_lock; } ;
struct callout {int c_iflags; } ;
struct TYPE_4__ {int sle; } ;
struct TYPE_3__ {int pc_domain; } ;


 int CALLOUT_LOCAL_ALLOC ;
 int DOMAINSET_PREF (int ) ;
 int LIST_INIT (int *) ;
 int MTX_RECURSE ;
 int MTX_SPIN ;
 int M_CALLOUT ;
 int M_WAITOK ;
 int SBT_MAX ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct callout*,int ) ;
 int TAILQ_INIT (int *) ;
 TYPE_2__ c_links ;
 int callout_init (struct callout*,int ) ;
 int callwheelsize ;
 int cc_cce_cleanup (struct callout_cpu*,int) ;
 int * malloc_domainset (int,int ,int ,int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int ncallout ;
 TYPE_1__* pcpu_find (int) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static void
callout_cpu_init(struct callout_cpu *cc, int cpu)
{
 struct callout *c;
 int i;

 mtx_init(&cc->cc_lock, "callout", ((void*)0), MTX_SPIN | MTX_RECURSE);
 SLIST_INIT(&cc->cc_callfree);
 cc->cc_inited = 1;
 cc->cc_callwheel = malloc_domainset(sizeof(struct callout_list) *
     callwheelsize, M_CALLOUT,
     DOMAINSET_PREF(pcpu_find(cpu)->pc_domain), M_WAITOK);
 for (i = 0; i < callwheelsize; i++)
  LIST_INIT(&cc->cc_callwheel[i]);
 TAILQ_INIT(&cc->cc_expireq);
 cc->cc_firstevent = SBT_MAX;
 for (i = 0; i < 2; i++)
  cc_cce_cleanup(cc, i);
 snprintf(cc->cc_ktr_event_name, sizeof(cc->cc_ktr_event_name),
     "callwheel cpu %d", cpu);
 if (cc->cc_callout == ((void*)0))
  return;
 for (i = 0; i < ncallout; i++) {
  c = &cc->cc_callout[i];
  callout_init(c, 0);
  c->c_iflags = CALLOUT_LOCAL_ALLOC;
  SLIST_INSERT_HEAD(&cc->cc_callfree, c, c_links.sle);
 }
}

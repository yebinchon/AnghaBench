
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct ng_item {int dummy; } ;
typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int MTX_DEF ;
 int NG_WORKLIST_LOCK_INIT () ;
 int RFHIGHPID ;
 int UMA_ALIGN_CACHE ;
 int kproc_kthread_add (int ,int *,struct proc**,struct thread**,int ,int ,char*,char*,int) ;
 int maxalloc ;
 int maxdata ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int ng_idhash_lock ;
 int ng_namehash_lock ;
 int ng_nodelist_mtx ;
 int ng_qdzone ;
 int ng_qzone ;
 int ng_topo_lock ;
 int ng_typelist_lock ;
 int ngq_mtx ;
 int ngthread ;
 int numthreads ;
 int rw_init (int *,char*) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int ) ;

__attribute__((used)) static int
ngb_mod_event(module_t mod, int event, void *data)
{
 struct proc *p;
 struct thread *td;
 int i, error = 0;

 switch (event) {
 case 129:

  NG_WORKLIST_LOCK_INIT();
  rw_init(&ng_typelist_lock, "netgraph types");
  rw_init(&ng_idhash_lock, "netgraph idhash");
  rw_init(&ng_namehash_lock, "netgraph namehash");
  rw_init(&ng_topo_lock, "netgraph topology mutex");






  ng_qzone = uma_zcreate("NetGraph items", sizeof(struct ng_item),
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_CACHE, 0);
  uma_zone_set_max(ng_qzone, maxalloc);
  ng_qdzone = uma_zcreate("NetGraph data items",
      sizeof(struct ng_item), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      UMA_ALIGN_CACHE, 0);
  uma_zone_set_max(ng_qdzone, maxdata);

  if (numthreads <= 0)
   numthreads = mp_ncpus;

      p = ((void*)0);
  for (i = 0; i < numthreads; i++) {
   if (kproc_kthread_add(ngthread, ((void*)0), &p, &td,
       RFHIGHPID, 0, "ng_queue", "ng_queue%d", i)) {
    numthreads = i;
    break;
   }
  }
  break;
 case 128:

  error = EBUSY;
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}

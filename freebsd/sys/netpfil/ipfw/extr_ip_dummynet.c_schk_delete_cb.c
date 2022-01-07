
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int sched_nr; } ;
struct dn_schk {void* profile; TYPE_2__* fp; int * siht; TYPE_1__ sch; int fsk_list; } ;
struct TYPE_6__ {int schk_count; } ;
struct TYPE_5__ {int (* destroy ) (struct dn_schk*) ;} ;


 int DNHT_SCAN_DEL ;
 int DN_DELETE_FS ;
 int DN_DESTROY ;
 int DN_HAVE_MASK ;
 int M_DUMMYNET ;
 int ND (char*,int ,char*,char*) ;
 int bzero (struct dn_schk*,int) ;
 TYPE_3__ dn_cfg ;
 int dn_ht_free (int *,int ) ;
 int dn_ht_scan (int *,int (*) (int *,int *),int *) ;
 int free (void*,int ) ;
 int fsk_detach_list (int *,int) ;
 int si_destroy (int *,int *) ;
 int stub1 (struct dn_schk*) ;

__attribute__((used)) static int
schk_delete_cb(void *obj, void *arg)
{
 struct dn_schk *s = obj;







 fsk_detach_list(&s->fsk_list, arg ? DN_DESTROY : 0);

 if (s->sch.flags & DN_HAVE_MASK) {
  dn_ht_scan(s->siht, si_destroy, ((void*)0));
  dn_ht_free(s->siht, 0);
 } else if (s->siht)
  si_destroy(s->siht, ((void*)0));
 if (s->profile) {
  free(s->profile, M_DUMMYNET);
  s->profile = ((void*)0);
 }
 s->siht = ((void*)0);
 if (s->fp->destroy)
  s->fp->destroy(s);
 bzero(s, sizeof(*s));
 free(obj, M_DUMMYNET);
 dn_cfg.schk_count--;
 return DNHT_SCAN_DEL;
}

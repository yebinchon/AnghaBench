
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct dn_fsk {scalar_t__ qht; TYPE_1__ fs; } ;
struct dn_flow_set {int dummy; } ;
struct dn_flow_queue8 {int dummy; } ;
struct copy_args {int end; int* start; } ;


 int D (char*) ;
 int DN_HAVE_MASK ;
 int dn_c_copy_fs (struct dn_fsk*,struct copy_args*,int) ;
 int dn_c_copy_q (scalar_t__,struct copy_args*) ;
 int dn_ht_entries (scalar_t__) ;
 int dn_ht_scan (scalar_t__,int (*) (scalar_t__,struct copy_args*),struct copy_args*) ;

int
dn_compat_copy_queue(struct copy_args *a, void *_o)
{
 int have = a->end - *a->start;
 int need = 0;
 int fs_size = sizeof(struct dn_flow_set);
 int queue_size = sizeof(struct dn_flow_queue8);

 struct dn_fsk *fs = (struct dn_fsk *)_o;
 int n_queue = 0;

 n_queue = (fs->fs.flags & DN_HAVE_MASK ? dn_ht_entries(fs->qht) :
      (fs->qht ? 1 : 0));

 need = fs_size + queue_size * n_queue;
 if (have < need) {
  D("have < need");
  return 1;
 }


 dn_c_copy_fs(fs, a, n_queue);


 if (fs->fs.flags & DN_HAVE_MASK)
  dn_ht_scan(fs->qht, dn_c_copy_q, a);
 else if (fs->qht)
  dn_c_copy_q(fs->qht, a);

 return 0;
}

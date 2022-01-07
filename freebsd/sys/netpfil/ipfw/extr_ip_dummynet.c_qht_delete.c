
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_queue {int dummy; } ;
struct TYPE_2__ {int flags; int fs_nr; } ;
struct dn_fsk {int * qht; TYPE_1__ fs; } ;


 int DN_DESTROY ;
 int DN_QHT_HASH ;
 int ND (char*,int ,int,int *) ;
 int dn_delete_queue (struct dn_queue*,int) ;
 int dn_ht_free (int *,int ) ;
 int dn_ht_scan (int *,int ,void*) ;
 int q_delete_cb ;

__attribute__((used)) static void
qht_delete(struct dn_fsk *fs, int flags)
{
 ND("fs %d start flags %d qht %p",
  fs->fs.fs_nr, flags, fs->qht);
 if (!fs->qht)
  return;
 if (fs->fs.flags & DN_QHT_HASH) {
  dn_ht_scan(fs->qht, q_delete_cb, (void *)(uintptr_t)flags);
  if (flags & DN_DESTROY) {
   dn_ht_free(fs->qht, 0);
   fs->qht = ((void*)0);
  }
 } else {
  dn_delete_queue((struct dn_queue *)(fs->qht), flags);
  if (flags & DN_DESTROY)
   fs->qht = ((void*)0);
 }
}

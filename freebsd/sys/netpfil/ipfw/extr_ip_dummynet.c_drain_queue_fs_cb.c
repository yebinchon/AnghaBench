
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct dn_fsk {int * qht; int drain_bucket; TYPE_1__ fs; } ;


 scalar_t__ DNHT_SCAN_DEL ;
 int DN_QHT_HASH ;
 int dn_ht_scan_bucket (int *,int *,scalar_t__ (*) (int *,int *),int *) ;
 scalar_t__ drain_queue_cb (int *,int *) ;

__attribute__((used)) static int
drain_queue_fs_cb(void *_fs, void *arg)
{
 struct dn_fsk *fs = _fs;

 if (fs->fs.flags & DN_QHT_HASH) {

  dn_ht_scan_bucket(fs->qht, &fs->drain_bucket,
    drain_queue_cb, ((void*)0));
  fs->drain_bucket++;
 } else {



  if (fs->qht) {
   if (drain_queue_cb(fs->qht, ((void*)0)) == DNHT_SCAN_DEL)
    fs->qht = ((void*)0);
  }
 }
 return 0;
}

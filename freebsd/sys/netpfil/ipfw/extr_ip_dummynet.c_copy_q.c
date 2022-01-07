
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct dn_fsk {int qht; TYPE_1__ fs; } ;
struct copy_args {int dummy; } ;


 int DN_QHT_HASH ;
 int copy_q_cb (int ,struct copy_args*) ;
 int dn_ht_scan (int ,int (*) (int ,struct copy_args*),struct copy_args*) ;

__attribute__((used)) static int
copy_q(struct copy_args *a, struct dn_fsk *fs, int flags)
{
 if (!fs->qht)
  return 0;
 if (fs->fs.flags & DN_QHT_HASH)
  dn_ht_scan(fs->qht, copy_q_cb, a);
 else
  copy_q_cb(fs->qht, a);
 return 0;
}

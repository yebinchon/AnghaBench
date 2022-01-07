
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct consdev {int cn_flags; } ;
struct TYPE_2__ {struct consdev* cnd_cn; } ;


 int CNDEVTAB_SIZE ;
 int CN_FLAG_NOAVAIL ;
 TYPE_1__* cn_devtab ;
 int cons_avail_mask ;

void
cnavailable(struct consdev *cn, int available)
{
 int i;

 for (i = 0; i < CNDEVTAB_SIZE; i++) {
  if (cn_devtab[i].cnd_cn == cn)
   break;
 }
 if (available) {
  if (i < CNDEVTAB_SIZE)
   cons_avail_mask |= (1 << i);
  cn->cn_flags &= ~CN_FLAG_NOAVAIL;
 } else {
  if (i < CNDEVTAB_SIZE)
   cons_avail_mask &= ~(1 << i);
  cn->cn_flags |= CN_FLAG_NOAVAIL;
 }
}

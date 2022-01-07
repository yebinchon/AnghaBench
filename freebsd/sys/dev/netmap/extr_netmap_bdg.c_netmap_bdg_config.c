
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nm_ifreq {int nifr_name; } ;
struct TYPE_2__ {int (* config ) (struct nm_ifreq*) ;} ;
struct nm_bridge {TYPE_1__ bdg_ops; } ;


 int BDG_RLOCK (struct nm_bridge*) ;
 int BDG_RUNLOCK (struct nm_bridge*) ;
 int EINVAL ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 struct nm_bridge* nm_find_bridge (int ,int ,int *) ;
 int stub1 (struct nm_ifreq*) ;

int
netmap_bdg_config(struct nm_ifreq *nr)
{
 struct nm_bridge *b;
 int error = EINVAL;

 NMG_LOCK();
 b = nm_find_bridge(nr->nifr_name, 0, ((void*)0));
 if (!b) {
  NMG_UNLOCK();
  return error;
 }
 NMG_UNLOCK();

 BDG_RLOCK(b);
 if (b->bdg_ops.config != ((void*)0))
  error = b->bdg_ops.config(nr);
 BDG_RUNLOCK(b);
 return error;
}

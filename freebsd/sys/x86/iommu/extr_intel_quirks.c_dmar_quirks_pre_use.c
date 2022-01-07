
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dummy; } ;


 int DMAR_BARRIER_USEQ ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int dmar_barrier_enter (struct dmar_unit*,int ) ;
 int dmar_barrier_exit (struct dmar_unit*,int ) ;
 int dmar_match_quirks (struct dmar_unit*,int ,int ,int *,int ) ;
 int nitems (int ) ;
 int pre_use_nb ;

void
dmar_quirks_pre_use(struct dmar_unit *dmar)
{

 if (!dmar_barrier_enter(dmar, DMAR_BARRIER_USEQ))
  return;
 DMAR_LOCK(dmar);
 dmar_match_quirks(dmar, pre_use_nb, nitems(pre_use_nb),
     ((void*)0), 0);
 dmar_barrier_exit(dmar, DMAR_BARRIER_USEQ);
}

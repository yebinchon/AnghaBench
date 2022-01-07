
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {scalar_t__ bo_numoutput; int bo_flag; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int BO_WWAIT ;
 int KASSERT (int,char*) ;
 int wakeup (scalar_t__*) ;

void
bufobj_wdrop(struct bufobj *bo)
{

 KASSERT(bo != ((void*)0), ("NULL bo in bufobj_wdrop"));
 BO_LOCK(bo);
 KASSERT(bo->bo_numoutput > 0, ("bufobj_wdrop non-positive count"));
 if ((--bo->bo_numoutput == 0) && (bo->bo_flag & BO_WWAIT)) {
  bo->bo_flag &= ~BO_WWAIT;
  wakeup(&bo->bo_numoutput);
 }
 BO_UNLOCK(bo);
}

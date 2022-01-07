
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int bo_numoutput; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int KASSERT (int ,char*) ;

void
bufobj_wref(struct bufobj *bo)
{

 KASSERT(bo != ((void*)0), ("NULL bo in bufobj_wref"));
 BO_LOCK(bo);
 bo->bo_numoutput++;
 BO_UNLOCK(bo);
}

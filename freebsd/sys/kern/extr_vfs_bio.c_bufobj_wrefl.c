
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int bo_numoutput; } ;


 int ASSERT_BO_WLOCKED (struct bufobj*) ;
 int KASSERT (int ,char*) ;

void
bufobj_wrefl(struct bufobj *bo)
{

 KASSERT(bo != ((void*)0), ("NULL bo in bufobj_wref"));
 ASSERT_BO_WLOCKED(bo);
 bo->bo_numoutput++;
}

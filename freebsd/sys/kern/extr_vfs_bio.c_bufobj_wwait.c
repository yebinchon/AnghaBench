
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {scalar_t__ bo_numoutput; int bo_flag; } ;


 int ASSERT_BO_WLOCKED (struct bufobj*) ;
 int BO_LOCKPTR (struct bufobj*) ;
 int BO_WWAIT ;
 int KASSERT (int ,char*) ;
 int PRIBIO ;
 int msleep (scalar_t__*,int ,int,char*,int) ;

int
bufobj_wwait(struct bufobj *bo, int slpflag, int timeo)
{
 int error;

 KASSERT(bo != ((void*)0), ("NULL bo in bufobj_wwait"));
 ASSERT_BO_WLOCKED(bo);
 error = 0;
 while (bo->bo_numoutput) {
  bo->bo_flag |= BO_WWAIT;
  error = msleep(&bo->bo_numoutput, BO_LOCKPTR(bo),
      slpflag | (PRIBIO + 1), "bo_wwait", timeo);
  if (error)
   break;
 }
 return (error);
}

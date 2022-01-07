
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int bo_flag; } ;


 int ASSERT_BO_WLOCKED (struct bufobj*) ;
 int BO_ONWORKLST ;
 int LIST_INSERT_HEAD (int *,struct bufobj*,int ) ;
 int LIST_REMOVE (struct bufobj*,int ) ;
 int bo_synclist ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sync_mtx ;
 int syncer_delayno ;
 int syncer_mask ;
 int syncer_maxdelay ;
 int * syncer_workitem_pending ;
 int syncer_worklist_len ;

__attribute__((used)) static void
vn_syncer_add_to_worklist(struct bufobj *bo, int delay)
{
 int slot;

 ASSERT_BO_WLOCKED(bo);

 mtx_lock(&sync_mtx);
 if (bo->bo_flag & BO_ONWORKLST)
  LIST_REMOVE(bo, bo_synclist);
 else {
  bo->bo_flag |= BO_ONWORKLST;
  syncer_worklist_len++;
 }

 if (delay > syncer_maxdelay - 2)
  delay = syncer_maxdelay - 2;
 slot = (syncer_delayno + delay) & syncer_mask;

 LIST_INSERT_HEAD(&syncer_workitem_pending[slot], bo, bo_synclist);
 mtx_unlock(&sync_mtx);
}

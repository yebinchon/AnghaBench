
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct cuse_server_dev {scalar_t__ refs; int cv; TYPE_1__ selinfo; int hmem; int hdev; } ;
struct cuse_server {scalar_t__ refs; int cv; TYPE_1__ selinfo; int hmem; int hdev; } ;
struct cuse_memory {scalar_t__ refs; int cv; TYPE_1__ selinfo; int hmem; int hdev; } ;


 int M_CUSE ;
 struct cuse_server_dev* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct cuse_server_dev*,int ) ;
 int cuse_free_unit_by_id_locked (struct cuse_server_dev*,int) ;
 int cuse_lock () ;
 int cuse_server_free_dev (struct cuse_server_dev*) ;
 int cuse_server_head ;
 int cuse_server_is_closing (struct cuse_server_dev*) ;
 int cuse_server_wakeup_all_client_locked (struct cuse_server_dev*) ;
 int cuse_unlock () ;
 int cuse_vm_memory_free (struct cuse_server_dev*) ;
 int cv_destroy (int *) ;
 int entry ;
 int free (struct cuse_server_dev*,int ) ;
 int knlist_clear (int *,int) ;
 int knlist_destroy (int *) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static void
cuse_server_unref(struct cuse_server *pcs)
{
 struct cuse_server_dev *pcsd;
 struct cuse_memory *mem;

 cuse_lock();
 pcs->refs--;
 if (pcs->refs != 0) {
  cuse_unlock();
  return;
 }
 cuse_server_is_closing(pcs);

 cuse_server_wakeup_all_client_locked(pcs);

 TAILQ_REMOVE(&cuse_server_head, pcs, entry);

 while ((pcsd = TAILQ_FIRST(&pcs->hdev)) != ((void*)0)) {
  TAILQ_REMOVE(&pcs->hdev, pcsd, entry);
  cuse_unlock();
  cuse_server_free_dev(pcsd);
  cuse_lock();
 }

 cuse_free_unit_by_id_locked(pcs, -1);

 while ((mem = TAILQ_FIRST(&pcs->hmem)) != ((void*)0)) {
  TAILQ_REMOVE(&pcs->hmem, mem, entry);
  cuse_unlock();
  cuse_vm_memory_free(mem);
  cuse_lock();
 }

 knlist_clear(&pcs->selinfo.si_note, 1);
 knlist_destroy(&pcs->selinfo.si_note);

 cuse_unlock();

 seldrain(&pcs->selinfo);

 cv_destroy(&pcs->cv);

 free(pcs, M_CUSE);
}

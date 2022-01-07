
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
struct pglist {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_2__ {int q; } ;


 int TAILQ_REMOVE (struct pglist*,int ,int ) ;
 TYPE_1__ plinks ;
 int ttm_vm_page_free (int ) ;

__attribute__((used)) static void ttm_handle_caching_state_failure(struct pglist *pages,
  int ttm_flags, enum ttm_caching_state cstate,
  vm_page_t *failed_pages, unsigned cpages)
{
 unsigned i;

 for (i = 0; i < cpages; ++i) {
  TAILQ_REMOVE(pages, failed_pages[i], plinks.q);
  ttm_vm_page_free(failed_pages[i]);
 }
}

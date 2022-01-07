
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pfil_link_args {int pa_flags; } ;
struct pfil_link {int link_epoch_ctx; } ;
typedef TYPE_1__* pfil_hook_t ;
typedef TYPE_2__* pfil_head_t ;
struct TYPE_7__ {int head_nhooksout; int head_out; int head_nhooksin; int head_in; } ;
struct TYPE_6__ {int hook_links; } ;


 int ENOENT ;
 int PFIL_EPOCH ;
 int PFIL_IN ;
 int PFIL_LOCK_ASSERT () ;
 int PFIL_OUT ;
 int PFIL_UNLOCK () ;
 int epoch_call (int ,int *,int ) ;
 int pfil_link_free ;
 struct pfil_link* pfil_link_remove (int *,TYPE_1__*) ;

__attribute__((used)) static int
pfil_unlink(struct pfil_link_args *pa, pfil_head_t head, pfil_hook_t hook)
{
 struct pfil_link *in, *out;

 PFIL_LOCK_ASSERT();

 if (pa->pa_flags & PFIL_IN) {
  in = pfil_link_remove(&head->head_in, hook);
  if (in != ((void*)0)) {
   head->head_nhooksin--;
   hook->hook_links--;
  }
 } else
  in = ((void*)0);
 if (pa->pa_flags & PFIL_OUT) {
  out = pfil_link_remove(&head->head_out, hook);
  if (out != ((void*)0)) {
   head->head_nhooksout--;
   hook->hook_links--;
  }
 } else
  out = ((void*)0);
 PFIL_UNLOCK();

 if (in != ((void*)0))
  epoch_call(PFIL_EPOCH, &in->link_epoch_ctx, pfil_link_free);
 if (out != ((void*)0))
  epoch_call(PFIL_EPOCH, &out->link_epoch_ctx, pfil_link_free);

 if (in == ((void*)0) && out == ((void*)0))
  return (ENOENT);
 else
  return (0);
}

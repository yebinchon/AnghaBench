
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct collected_reflog {int oid; } ;
struct collect_reflog_cb {scalar_t__ nr; struct collected_reflog** e; int alloc; TYPE_1__* wt; } ;
struct TYPE_2__ {int is_current; } ;


 int ALLOC_GROW (struct collected_reflog**,scalar_t__,int ) ;
 int FLEX_ALLOC_STR (struct collected_reflog*,int ,int ) ;
 scalar_t__ REF_TYPE_NORMAL ;
 struct strbuf STRBUF_INIT ;
 int oidcpy (int *,struct object_id const*) ;
 scalar_t__ ref_type (char const*) ;
 int reflog ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_worktree_ref (TYPE_1__*,struct strbuf*,char const*) ;

__attribute__((used)) static int collect_reflog(const char *ref, const struct object_id *oid, int unused, void *cb_data)
{
 struct collected_reflog *e;
 struct collect_reflog_cb *cb = cb_data;
 struct strbuf newref = STRBUF_INIT;





 if (!cb->wt->is_current && ref_type(ref) == REF_TYPE_NORMAL)
  return 0;

 strbuf_worktree_ref(cb->wt, &newref, ref);
 FLEX_ALLOC_STR(e, reflog, newref.buf);
 strbuf_release(&newref);

 oidcpy(&e->oid, oid);
 ALLOC_GROW(cb->e, cb->nr + 1, cb->alloc);
 cb->e[cb->nr++] = e;
 return 0;
}

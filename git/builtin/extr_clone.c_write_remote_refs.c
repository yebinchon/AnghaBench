
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct ref_transaction {int dummy; } ;
struct ref {int old_oid; TYPE_1__* peer_ref; struct ref* next; } ;
struct TYPE_2__ {int name; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,int ) ;
 scalar_t__ initial_ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 struct ref_transaction* ref_transaction_begin (struct strbuf*) ;
 scalar_t__ ref_transaction_create (struct ref_transaction*,int ,int *,int ,int *,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void write_remote_refs(const struct ref *local_refs)
{
 const struct ref *r;

 struct ref_transaction *t;
 struct strbuf err = STRBUF_INIT;

 t = ref_transaction_begin(&err);
 if (!t)
  die("%s", err.buf);

 for (r = local_refs; r; r = r->next) {
  if (!r->peer_ref)
   continue;
  if (ref_transaction_create(t, r->peer_ref->name, &r->old_oid,
        0, ((void*)0), &err))
   die("%s", err.buf);
 }

 if (initial_ref_transaction_commit(t, &err))
  die("%s", err.buf);

 strbuf_release(&err);
 ref_transaction_free(t);
}

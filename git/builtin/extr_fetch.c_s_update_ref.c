
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct ref_transaction {int dummy; } ;
struct ref {int old_oid; int new_oid; int name; } ;
struct TYPE_2__ {char* buf; } ;


 int STORE_REF_ERROR_DF_CONFLICT ;
 int STORE_REF_ERROR_OTHER ;
 struct strbuf STRBUF_INIT ;
 int TRANSACTION_NAME_CONFLICT ;
 TYPE_1__ default_rla ;
 scalar_t__ dry_run ;
 int error (char*,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 struct ref_transaction* ref_transaction_begin (struct strbuf*) ;
 int ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 scalar_t__ ref_transaction_update (struct ref_transaction*,int ,int *,int *,int ,char*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 char* xstrfmt (char*,char*,char const*) ;

__attribute__((used)) static int s_update_ref(const char *action,
   struct ref *ref,
   int check_old)
{
 char *msg;
 char *rla = getenv("GIT_REFLOG_ACTION");
 struct ref_transaction *transaction;
 struct strbuf err = STRBUF_INIT;
 int ret, df_conflict = 0;

 if (dry_run)
  return 0;
 if (!rla)
  rla = default_rla.buf;
 msg = xstrfmt("%s: %s", rla, action);

 transaction = ref_transaction_begin(&err);
 if (!transaction ||
     ref_transaction_update(transaction, ref->name,
       &ref->new_oid,
       check_old ? &ref->old_oid : ((void*)0),
       0, msg, &err))
  goto fail;

 ret = ref_transaction_commit(transaction, &err);
 if (ret) {
  df_conflict = (ret == TRANSACTION_NAME_CONFLICT);
  goto fail;
 }

 ref_transaction_free(transaction);
 strbuf_release(&err);
 free(msg);
 return 0;
fail:
 ref_transaction_free(transaction);
 error("%s", err.buf);
 strbuf_release(&err);
 free(msg);
 return df_conflict ? STORE_REF_ERROR_DF_CONFLICT
      : STORE_REF_ERROR_OTHER;
}

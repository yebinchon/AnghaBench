
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ check_ref_valid (struct object_id*,struct object_id*,struct strbuf*,int) ;
 int error (char*,char const*,...) ;
 int oid_object_info (int ,struct object_id*,int *) ;
 struct ref_transaction* ref_transaction_begin (struct strbuf*) ;
 scalar_t__ ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 scalar_t__ ref_transaction_update (struct ref_transaction*,int ,struct object_id*,struct object_id*,int ,int *,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 char* type_name (int) ;

__attribute__((used)) static int replace_object_oid(const char *object_ref,
          struct object_id *object,
          const char *replace_ref,
          struct object_id *repl,
          int force)
{
 struct object_id prev;
 enum object_type obj_type, repl_type;
 struct strbuf ref = STRBUF_INIT;
 struct ref_transaction *transaction;
 struct strbuf err = STRBUF_INIT;
 int res = 0;

 obj_type = oid_object_info(the_repository, object, ((void*)0));
 repl_type = oid_object_info(the_repository, repl, ((void*)0));
 if (!force && obj_type != repl_type)
  return error(_("Objects must be of the same type.\n"
          "'%s' points to a replaced object of type '%s'\n"
          "while '%s' points to a replacement object of "
          "type '%s'."),
        object_ref, type_name(obj_type),
        replace_ref, type_name(repl_type));

 if (check_ref_valid(object, &prev, &ref, force)) {
  strbuf_release(&ref);
  return -1;
 }

 transaction = ref_transaction_begin(&err);
 if (!transaction ||
     ref_transaction_update(transaction, ref.buf, repl, &prev,
       0, ((void*)0), &err) ||
     ref_transaction_commit(transaction, &err))
  res = error("%s", err.buf);

 ref_transaction_free(transaction);
 strbuf_release(&ref);
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct ref_transaction {int dummy; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_STRING (char,int *,int **,int ,int ) ;
 int REF_FORCE_CREATE_REFLOG ;
 int REF_NO_DEREF ;
 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_DIE_ON_ERR ;
 int create_reflog_flag ;
 int default_flags ;
 int delete_ref (int *,char const*,struct object_id*,int) ;
 int die (char*,...) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int git_update_ref_usage ;
 int is_null_oid (struct object_id*) ;
 char line_termination ;
 int * msg ;
 int oidclr (struct object_id*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 struct ref_transaction* ref_transaction_begin (struct strbuf*) ;
 scalar_t__ ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 int strbuf_release (struct strbuf*) ;
 int update_flags ;
 int update_ref (int *,char const*,struct object_id*,struct object_id*,int,int ) ;
 int update_refs_stdin (struct ref_transaction*) ;
 int usage_with_options (int ,struct option*) ;

int cmd_update_ref(int argc, const char **argv, const char *prefix)
{
 const char *refname, *oldval;
 struct object_id oid, oldoid;
 int delete = 0, no_deref = 0, read_stdin = 0, end_null = 0;
 int create_reflog = 0;
 struct option options[] = {
  OPT_STRING( 'm', ((void*)0), &msg, N_("reason"), N_("reason of the update")),
  OPT_BOOL('d', ((void*)0), &delete, N_("delete the reference")),
  OPT_BOOL( 0 , "no-deref", &no_deref,
     N_("update <refname> not the one it points to")),
  OPT_BOOL('z', ((void*)0), &end_null, N_("stdin has NUL-terminated arguments")),
  OPT_BOOL( 0 , "stdin", &read_stdin, N_("read updates from stdin")),
  OPT_BOOL( 0 , "create-reflog", &create_reflog, N_("create a reflog")),
  OPT_END(),
 };

 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, options, git_update_ref_usage,
        0);
 if (msg && !*msg)
  die("Refusing to perform update with empty message.");

 create_reflog_flag = create_reflog ? REF_FORCE_CREATE_REFLOG : 0;

 if (no_deref) {
  default_flags = REF_NO_DEREF;
  update_flags = default_flags;
 }

 if (read_stdin) {
  struct strbuf err = STRBUF_INIT;
  struct ref_transaction *transaction;

  transaction = ref_transaction_begin(&err);
  if (!transaction)
   die("%s", err.buf);
  if (delete || argc > 0)
   usage_with_options(git_update_ref_usage, options);
  if (end_null)
   line_termination = '\0';
  update_refs_stdin(transaction);
  if (ref_transaction_commit(transaction, &err))
   die("%s", err.buf);
  ref_transaction_free(transaction);
  strbuf_release(&err);
  return 0;
 }

 if (end_null)
  usage_with_options(git_update_ref_usage, options);

 if (delete) {
  if (argc < 1 || argc > 2)
   usage_with_options(git_update_ref_usage, options);
  refname = argv[0];
  oldval = argv[1];
 } else {
  const char *value;
  if (argc < 2 || argc > 3)
   usage_with_options(git_update_ref_usage, options);
  refname = argv[0];
  value = argv[1];
  oldval = argv[2];
  if (get_oid(value, &oid))
   die("%s: not a valid SHA1", value);
 }

 if (oldval) {
  if (!*oldval)




   oidclr(&oldoid);
  else if (get_oid(oldval, &oldoid))
   die("%s: not a valid old SHA1", oldval);
 }

 if (delete)




  return delete_ref(msg, refname,
      (oldval && !is_null_oid(&oldoid)) ? &oldoid : ((void*)0),
      default_flags);
 else
  return update_ref(msg, refname, &oid, oldval ? &oldoid : ((void*)0),
      default_flags | create_reflog_flag,
      UPDATE_REFS_DIE_ON_ERR);
}

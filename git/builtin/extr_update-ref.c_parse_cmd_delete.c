
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;


 int PARSE_SHA1_OLD ;
 struct strbuf STRBUF_INIT ;
 int default_flags ;
 int die (char*,...) ;
 int free (char*) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 char const line_termination ;
 int msg ;
 scalar_t__ parse_next_oid (struct strbuf*,char const**,struct object_id*,char*,char*,int ) ;
 char* parse_refname (struct strbuf*,char const**) ;
 scalar_t__ ref_transaction_delete (struct ref_transaction*,char*,struct object_id*,int ,int ,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int update_flags ;

__attribute__((used)) static const char *parse_cmd_delete(struct ref_transaction *transaction,
        struct strbuf *input, const char *next)
{
 struct strbuf err = STRBUF_INIT;
 char *refname;
 struct object_id old_oid;
 int have_old;

 refname = parse_refname(input, &next);
 if (!refname)
  die("delete: missing <ref>");

 if (parse_next_oid(input, &next, &old_oid, "delete", refname,
      PARSE_SHA1_OLD)) {
  have_old = 0;
 } else {
  if (is_null_oid(&old_oid))
   die("delete %s: zero <oldvalue>", refname);
  have_old = 1;
 }

 if (*next != line_termination)
  die("delete %s: extra input: %s", refname, next);

 if (ref_transaction_delete(transaction, refname,
       have_old ? &old_oid : ((void*)0),
       update_flags, msg, &err))
  die("%s", err.buf);

 update_flags = default_flags;
 free(refname);
 strbuf_release(&err);

 return next;
}

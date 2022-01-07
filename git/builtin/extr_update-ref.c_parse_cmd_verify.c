
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;


 int PARSE_SHA1_OLD ;
 struct strbuf STRBUF_INIT ;
 int default_flags ;
 int die (char*,...) ;
 int free (char*) ;
 char const line_termination ;
 int oidclr (struct object_id*) ;
 scalar_t__ parse_next_oid (struct strbuf*,char const**,struct object_id*,char*,char*,int ) ;
 char* parse_refname (struct strbuf*,char const**) ;
 scalar_t__ ref_transaction_verify (struct ref_transaction*,char*,struct object_id*,int ,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int update_flags ;

__attribute__((used)) static const char *parse_cmd_verify(struct ref_transaction *transaction,
        struct strbuf *input, const char *next)
{
 struct strbuf err = STRBUF_INIT;
 char *refname;
 struct object_id old_oid;

 refname = parse_refname(input, &next);
 if (!refname)
  die("verify: missing <ref>");

 if (parse_next_oid(input, &next, &old_oid, "verify", refname,
      PARSE_SHA1_OLD))
  oidclr(&old_oid);

 if (*next != line_termination)
  die("verify %s: extra input: %s", refname, next);

 if (ref_transaction_verify(transaction, refname, &old_oid,
       update_flags, &err))
  die("%s", err.buf);

 update_flags = default_flags;
 free(refname);
 strbuf_release(&err);

 return next;
}

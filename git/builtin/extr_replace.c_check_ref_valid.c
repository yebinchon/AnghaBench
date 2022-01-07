
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 scalar_t__ check_refname_format (int ,int ) ;
 int error (int ,int ) ;
 int git_replace_ref_base ;
 int oid_to_hex (struct object_id*) ;
 int oidclr (struct object_id*) ;
 scalar_t__ read_ref (int ,struct object_id*) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int check_ref_valid(struct object_id *object,
       struct object_id *prev,
       struct strbuf *ref,
       int force)
{
 strbuf_reset(ref);
 strbuf_addf(ref, "%s%s", git_replace_ref_base, oid_to_hex(object));
 if (check_refname_format(ref->buf, 0))
  return error(_("'%s' is not a valid ref name"), ref->buf);

 if (read_ref(ref->buf, prev))
  oidclr(prev);
 else if (!force)
  return error(_("replace ref '%s' already exists"), ref->buf);
 return 0;
}

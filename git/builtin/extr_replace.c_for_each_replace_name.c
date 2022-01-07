
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;
struct object_id {int dummy; } ;
typedef scalar_t__ (* each_replace_name_fn ) (char const*,char*,struct object_id*) ;


 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int error (char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_replace_ref_base ;
 int oid_to_hex (struct object_id*) ;
 scalar_t__ read_ref (char*,struct object_id*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

__attribute__((used)) static int for_each_replace_name(const char **argv, each_replace_name_fn fn)
{
 const char **p, *full_hex;
 struct strbuf ref = STRBUF_INIT;
 size_t base_len;
 int had_error = 0;
 struct object_id oid;

 strbuf_addstr(&ref, git_replace_ref_base);
 base_len = ref.len;

 for (p = argv; *p; p++) {
  if (get_oid(*p, &oid)) {
   error("failed to resolve '%s' as a valid ref", *p);
   had_error = 1;
   continue;
  }

  strbuf_setlen(&ref, base_len);
  strbuf_addstr(&ref, oid_to_hex(&oid));
  full_hex = ref.buf + base_len;

  if (read_ref(ref.buf, &oid)) {
   error(_("replace ref '%s' not found"), full_hex);
   had_error = 1;
   continue;
  }
  if (fn(full_hex, ref.buf, &oid))
   had_error = 1;
 }
 strbuf_release(&ref);
 return had_error;
}

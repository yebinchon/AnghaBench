
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
typedef scalar_t__ (* each_tag_name_fn ) (char const*,int ,struct object_id*,void const*) ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error (int ,char const*) ;
 scalar_t__ read_ref (int ,struct object_id*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int for_each_tag_name(const char **argv, each_tag_name_fn fn,
        const void *cb_data)
{
 const char **p;
 struct strbuf ref = STRBUF_INIT;
 int had_error = 0;
 struct object_id oid;

 for (p = argv; *p; p++) {
  strbuf_reset(&ref);
  strbuf_addf(&ref, "refs/tags/%s", *p);
  if (read_ref(ref.buf, &oid)) {
   error(_("tag '%s' not found."), *p);
   had_error = 1;
   continue;
  }
  if (fn(*p, ref.buf, &oid, cb_data))
   had_error = 1;
 }
 strbuf_release(&ref);
 return had_error;
}

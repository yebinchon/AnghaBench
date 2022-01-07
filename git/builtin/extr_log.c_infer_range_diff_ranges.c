
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int _ (char*) ;
 int die (int ) ;
 char const* oid_to_hex (int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strstr (char const*,char*) ;

__attribute__((used)) static void infer_range_diff_ranges(struct strbuf *r1,
        struct strbuf *r2,
        const char *prev,
        struct commit *origin,
        struct commit *head)
{
 const char *head_oid = oid_to_hex(&head->object.oid);

 if (!strstr(prev, "..")) {
  strbuf_addf(r1, "%s..%s", head_oid, prev);
  strbuf_addf(r2, "%s..%s", prev, head_oid);
 } else if (!origin) {
  die(_("failed to infer range-diff ranges"));
 } else {
  strbuf_addstr(r1, prev);
  strbuf_addf(r2, "%s..%s",
       oid_to_hex(&origin->object.oid), head_oid);
 }
}

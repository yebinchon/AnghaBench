
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref {TYPE_1__* peer_ref; int name; int old_oid; } ;
struct TYPE_2__ {int name; int old_oid; } ;


 scalar_t__ compact_format ;
 scalar_t__ oideq (int *,int *) ;
 int prettify_refname (int ) ;
 int refcol_width ;
 int term_columns () ;
 int utf8_strwidth (int ) ;
 int verbosity ;

__attribute__((used)) static void adjust_refcol_width(const struct ref *ref)
{
 int max, rlen, llen, len;


 if (!verbosity && oideq(&ref->peer_ref->old_oid, &ref->old_oid))
  return;

 max = term_columns();
 rlen = utf8_strwidth(prettify_refname(ref->name));

 llen = utf8_strwidth(prettify_refname(ref->peer_ref->name));







 if (compact_format) {
  llen = 0;
  max = max * 2 / 3;
 }
 len = 21 + rlen + 4 + llen;
 if (len >= max)
  return;






 if (refcol_width < rlen)
  refcol_width = rlen;
}

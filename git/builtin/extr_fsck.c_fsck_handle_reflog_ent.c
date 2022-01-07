
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 int fprintf_ln (int ,int ,int ,int ) ;
 int fsck_handle_reflog_oid (char const*,struct object_id*,int ) ;
 int oid_to_hex (struct object_id*) ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static int fsck_handle_reflog_ent(struct object_id *ooid, struct object_id *noid,
  const char *email, timestamp_t timestamp, int tz,
  const char *message, void *cb_data)
{
 const char *refname = cb_data;

 if (verbose)
  fprintf_ln(stderr, _("Checking reflog %s->%s"),
      oid_to_hex(ooid), oid_to_hex(noid));

 fsck_handle_reflog_oid(refname, ooid, 0);
 fsck_handle_reflog_oid(refname, noid, timestamp);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct rev_collect {scalar_t__ initial; } ;
struct object_id {int dummy; } ;


 int add_one_commit (struct object_id*,struct rev_collect*) ;

__attribute__((used)) static int collect_one_reflog_ent(struct object_id *ooid, struct object_id *noid,
      const char *ident, timestamp_t timestamp,
      int tz, const char *message, void *cbdata)
{
 struct rev_collect *revs = cbdata;

 if (revs->initial) {
  revs->initial = 0;
  add_one_commit(ooid, revs);
 }
 add_one_commit(noid, revs);
 return 0;
}

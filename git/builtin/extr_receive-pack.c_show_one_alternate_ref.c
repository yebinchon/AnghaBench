
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int dummy; } ;
struct object_id {int dummy; } ;


 scalar_t__ oidset_insert (struct oidset*,struct object_id const*) ;
 int show_ref (char*,struct object_id const*) ;

__attribute__((used)) static void show_one_alternate_ref(const struct object_id *oid,
       void *data)
{
 struct oidset *seen = data;

 if (oidset_insert(seen, oid))
  return;

 show_ref(".have", oid);
}

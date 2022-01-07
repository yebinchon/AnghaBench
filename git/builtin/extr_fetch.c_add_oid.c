
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;


 int oid_array_append (struct oid_array*,struct object_id const*) ;

__attribute__((used)) static int add_oid(const char *refname, const struct object_id *oid, int flags,
     void *cb_data)
{
 struct oid_array *oids = cb_data;

 oid_array_append(oids, oid);
 return 0;
}

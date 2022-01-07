
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int mark_object_for_connectivity (struct object_id const*) ;

__attribute__((used)) static int mark_loose_for_connectivity(const struct object_id *oid,
           const char *path,
           void *data)
{
 mark_object_for_connectivity(oid);
 return 0;
}

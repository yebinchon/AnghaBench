
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;


 int oid_array_append (void*,struct object_id const*) ;

__attribute__((used)) static int collect_packed_object(const struct object_id *oid,
     struct packed_git *pack,
     uint32_t pos,
     void *data)
{
 oid_array_append(data, oid);
 return 0;
}

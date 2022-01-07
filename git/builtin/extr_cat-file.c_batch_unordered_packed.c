
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;


 int batch_unordered_object (struct object_id const*,void*) ;

__attribute__((used)) static int batch_unordered_packed(const struct object_id *oid,
      struct packed_git *pack,
      uint32_t pos,
      void *data)
{
 return batch_unordered_object(oid, data);
}

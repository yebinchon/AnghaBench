
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int batch_unordered_object (struct object_id const*,void*) ;

__attribute__((used)) static int batch_unordered_loose(const struct object_id *oid,
     const char *path,
     void *data)
{
 return batch_unordered_object(oid, data);
}

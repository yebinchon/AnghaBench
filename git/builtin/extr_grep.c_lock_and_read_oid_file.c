
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int grep_read_lock () ;
 int grep_read_unlock () ;
 void* read_object_file (struct object_id const*,int*,unsigned long*) ;

__attribute__((used)) static void *lock_and_read_oid_file(const struct object_id *oid, enum object_type *type, unsigned long *size)
{
 void *data;

 grep_read_lock();
 data = read_object_file(oid, type, size);
 grep_read_unlock();
 return data;
}

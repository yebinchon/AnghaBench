
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;


 int oid_array_append (int *,int *) ;
 int recent_objects ;

__attribute__((used)) static void record_recent_object(struct object *obj,
     const char *name,
     void *data)
{
 oid_array_append(&recent_objects, &obj->oid);
}

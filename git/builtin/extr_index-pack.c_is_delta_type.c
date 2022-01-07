
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_OFS_DELTA ;
 int OBJ_REF_DELTA ;

__attribute__((used)) static int is_delta_type(enum object_type type)
{
 return (type == OBJ_REF_DELTA || type == OBJ_OFS_DELTA);
}

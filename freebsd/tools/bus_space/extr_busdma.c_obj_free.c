
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj {size_t oid; } ;


 int free (struct obj*) ;
 int ** oidtbl ;

__attribute__((used)) static int
obj_free(struct obj *obj)
{

 oidtbl[obj->oid] = ((void*)0);
 free(obj);
 return (0);
}

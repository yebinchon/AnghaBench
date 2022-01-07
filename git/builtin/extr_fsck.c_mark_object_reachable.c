
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int OBJ_ANY ;
 int mark_object (struct object*,int ,int *,int *) ;

__attribute__((used)) static void mark_object_reachable(struct object *obj)
{
 mark_object(obj, OBJ_ANY, ((void*)0), ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ obj; } ;


 int OBJ_ANY ;
 int check_object (scalar_t__,int ,int *,int *) ;
 unsigned int nr_objects ;
 TYPE_1__* obj_list ;

__attribute__((used)) static void write_rest(void)
{
 unsigned i;
 for (i = 0; i < nr_objects; i++) {
  if (obj_list[i].obj)
   check_object(obj_list[i].obj, OBJ_ANY, ((void*)0), ((void*)0));
 }
}

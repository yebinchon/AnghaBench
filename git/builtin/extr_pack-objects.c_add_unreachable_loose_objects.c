
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_loose_object ;
 int for_each_loose_file_in_objdir (int ,int ,int *,int *,int *) ;
 int get_object_directory () ;

__attribute__((used)) static void add_unreachable_loose_objects(void)
{
 for_each_loose_file_in_objdir(get_object_directory(),
          add_loose_object,
          ((void*)0), ((void*)0), ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_push (struct argv_array*,char*) ;
 int opt_force ;

__attribute__((used)) static void argv_push_force(struct argv_array *arr)
{
 int force = opt_force;
 while (force-- > 0)
  argv_array_push(arr, "-f");
}

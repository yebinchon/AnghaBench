
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_class_table {scalar_t__* method_table; } ;


 int MAX_MGMT_CLASS ;

__attribute__((used)) static int check_class_table(struct ib_mad_mgmt_class_table *class)
{
 int i;

 for (i = 0; i < MAX_MGMT_CLASS; i++)
  if (class->method_table[i])
   return 1;
 return 0;
}

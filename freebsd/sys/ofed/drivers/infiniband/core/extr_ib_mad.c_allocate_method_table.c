
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_method_table {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct ib_mad_mgmt_method_table* kzalloc (int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int allocate_method_table(struct ib_mad_mgmt_method_table **method)
{

 *method = kzalloc(sizeof **method, GFP_ATOMIC);
 if (!*method) {
  pr_err("No memory for ib_mad_mgmt_method_table\n");
  return -ENOMEM;
 }

 return 0;
}

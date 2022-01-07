
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_table {struct ib_gid_table* data_vec; } ;


 int kfree (struct ib_gid_table*) ;

__attribute__((used)) static void release_gid_table(struct ib_gid_table *table)
{
 if (table) {
  kfree(table->data_vec);
  kfree(table);
 }
}

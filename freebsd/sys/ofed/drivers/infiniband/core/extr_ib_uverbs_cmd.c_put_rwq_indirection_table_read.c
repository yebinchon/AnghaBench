
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_rwq_ind_table {int uobject; } ;


 int put_uobj_read (int ) ;

__attribute__((used)) static void put_rwq_indirection_table_read(struct ib_rwq_ind_table *ind_table)
{
 put_uobj_read(ind_table->uobject);
}

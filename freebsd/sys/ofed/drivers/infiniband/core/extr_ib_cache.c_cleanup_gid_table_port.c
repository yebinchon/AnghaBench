
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_gid_table {int sz; int rwlock; TYPE_1__* data_vec; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int props; int gid; } ;


 int GID_ATTR_FIND_MASK_DEFAULT ;
 int del_gid (struct ib_device*,int ,struct ib_gid_table*,int,int) ;
 int dispatch_gid_change_event (struct ib_device*,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int zgid ;

__attribute__((used)) static void cleanup_gid_table_port(struct ib_device *ib_dev, u8 port,
       struct ib_gid_table *table)
{
 int i;
 bool deleted = 0;

 if (!table)
  return;

 write_lock_irq(&table->rwlock);
 for (i = 0; i < table->sz; ++i) {
  if (memcmp(&table->data_vec[i].gid, &zgid,
      sizeof(table->data_vec[i].gid)))
   if (!del_gid(ib_dev, port, table, i,
         table->data_vec[i].props &
         GID_ATTR_FIND_MASK_DEFAULT))
    deleted = 1;
 }
 write_unlock_irq(&table->rwlock);

 if (deleted)
  dispatch_gid_change_event(ib_dev, port);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;


 int _gid_table_setup_one (struct ib_device*) ;
 int gid_table_cleanup_one (struct ib_device*) ;
 int gid_table_release_one (struct ib_device*) ;
 int roce_rescan_device (struct ib_device*) ;

__attribute__((used)) static int gid_table_setup_one(struct ib_device *ib_dev)
{
 int err;

 err = _gid_table_setup_one(ib_dev);

 if (err)
  return err;

 err = roce_rescan_device(ib_dev);

 if (err) {
  gid_table_cleanup_one(ib_dev);
  gid_table_release_one(ib_dev);
 }

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int dummy; } ;


 int qlnxr_add_default_sgid (struct qlnxr_dev*) ;
 int qlnxr_add_sgids (struct qlnxr_dev*) ;

__attribute__((used)) static int
qlnxr_build_sgid_tbl(struct qlnxr_dev *dev)
{
 qlnxr_add_default_sgid(dev);
 qlnxr_add_sgids(dev);
 return 0;
}

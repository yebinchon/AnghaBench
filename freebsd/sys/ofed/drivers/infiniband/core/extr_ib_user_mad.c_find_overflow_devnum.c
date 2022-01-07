
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dev; } ;


 int IB_UMAD_MAX_PORTS ;
 int alloc_chrdev_region (int *,int ,int,char*) ;
 int dev_err (int *,char*) ;
 int find_first_zero_bit (int ,int) ;
 int overflow_maj ;
 int overflow_map ;

__attribute__((used)) static int find_overflow_devnum(struct ib_device *device)
{
 int ret;

 if (!overflow_maj) {
  ret = alloc_chrdev_region(&overflow_maj, 0, IB_UMAD_MAX_PORTS * 2,
       "infiniband_mad");
  if (ret) {
   dev_err(&device->dev,
    "couldn't register dynamic device number\n");
   return ret;
  }
 }

 ret = find_first_zero_bit(overflow_map, IB_UMAD_MAX_PORTS);
 if (ret >= IB_UMAD_MAX_PORTS)
  return -1;

 return ret;
}

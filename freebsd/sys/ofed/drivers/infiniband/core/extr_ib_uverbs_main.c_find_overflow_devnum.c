
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_UVERBS_MAX_DEVICES ;
 int alloc_chrdev_region (int *,int ,int,char*) ;
 int find_first_zero_bit (int ,int) ;
 int overflow_maj ;
 int overflow_map ;
 int pr_err (char*) ;

__attribute__((used)) static int find_overflow_devnum(void)
{
 int ret;

 if (!overflow_maj) {
  ret = alloc_chrdev_region(&overflow_maj, 0, IB_UVERBS_MAX_DEVICES,
       "infiniband_verbs");
  if (ret) {
   pr_err("user_verbs: couldn't register dynamic device number\n");
   return ret;
  }
 }

 ret = find_first_zero_bit(overflow_map, IB_UVERBS_MAX_DEVICES);
 if (ret >= IB_UVERBS_MAX_DEVICES)
  return -1;

 return ret;
}

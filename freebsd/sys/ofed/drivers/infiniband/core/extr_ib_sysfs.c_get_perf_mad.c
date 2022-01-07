
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ib_mad_hdr {int dummy; } ;
struct TYPE_2__ {int base_version; int class_version; scalar_t__ attr_id; int method; int mgmt_class; } ;
struct ib_mad {int* data; TYPE_1__ mad_hdr; } ;
struct ib_device {int (* process_mad ) (struct ib_device*,int ,int,int *,int *,struct ib_mad_hdr const*,size_t,struct ib_mad_hdr*,size_t*,int *) ;} ;
typedef int ssize_t ;
typedef scalar_t__ __be16 ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int IB_MAD_IGNORE_MKEY ;
 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;
 int IB_MGMT_CLASS_PERF_MGMT ;
 int IB_MGMT_METHOD_GET ;
 scalar_t__ IB_PMA_CLASS_PORT_INFO ;
 int kfree (struct ib_mad*) ;
 struct ib_mad* kmalloc (int,int ) ;
 struct ib_mad* kzalloc (int,int ) ;
 int memcpy (void*,int*,size_t) ;
 int stub1 (struct ib_device*,int ,int,int *,int *,struct ib_mad_hdr const*,size_t,struct ib_mad_hdr*,size_t*,int *) ;

__attribute__((used)) static int get_perf_mad(struct ib_device *dev, int port_num, __be16 attr,
  void *data, int offset, size_t size)
{
 struct ib_mad *in_mad;
 struct ib_mad *out_mad;
 size_t mad_size = sizeof(*out_mad);
 u16 out_mad_pkey_index = 0;
 ssize_t ret;

 if (!dev->process_mad)
  return -ENOSYS;

 in_mad = kzalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad) {
  ret = -ENOMEM;
  goto out;
 }

 in_mad->mad_hdr.base_version = 1;
 in_mad->mad_hdr.mgmt_class = IB_MGMT_CLASS_PERF_MGMT;
 in_mad->mad_hdr.class_version = 1;
 in_mad->mad_hdr.method = IB_MGMT_METHOD_GET;
 in_mad->mad_hdr.attr_id = attr;

 if (attr != IB_PMA_CLASS_PORT_INFO)
  in_mad->data[41] = port_num;

 if ((dev->process_mad(dev, IB_MAD_IGNORE_MKEY,
   port_num, ((void*)0), ((void*)0),
   (const struct ib_mad_hdr *)in_mad, mad_size,
   (struct ib_mad_hdr *)out_mad, &mad_size,
   &out_mad_pkey_index) &
      (IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY)) !=
     (IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY)) {
  ret = -EINVAL;
  goto out;
 }
 memcpy(data, out_mad->data + offset, size);
 ret = size;
out:
 kfree(in_mad);
 kfree(out_mad);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct virtio_feature_desc {scalar_t__ vfd_val; char const* vfd_str; } ;


 struct virtio_feature_desc* virtio_common_feature_desc ;

__attribute__((used)) static const char *
virtio_feature_name(uint64_t val, struct virtio_feature_desc *desc)
{
 int i, j;
 struct virtio_feature_desc *descs[2] = { desc,
     virtio_common_feature_desc };

 for (i = 0; i < 2; i++) {
  if (descs[i] == ((void*)0))
   continue;

  for (j = 0; descs[i][j].vfd_val != 0; j++) {
   if (val == descs[i][j].vfd_val)
    return (descs[i][j].vfd_str);
  }
 }

 return (((void*)0));
}

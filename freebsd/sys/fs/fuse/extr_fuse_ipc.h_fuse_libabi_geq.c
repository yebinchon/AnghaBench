
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fuse_data {scalar_t__ fuse_libabi_major; scalar_t__ fuse_libabi_minor; } ;



__attribute__((used)) static inline bool
fuse_libabi_geq(struct fuse_data *data, uint32_t abi_maj, uint32_t abi_min)
{
 return (data->fuse_libabi_major > abi_maj ||
     (data->fuse_libabi_major == abi_maj &&
      data->fuse_libabi_minor >= abi_min));
}

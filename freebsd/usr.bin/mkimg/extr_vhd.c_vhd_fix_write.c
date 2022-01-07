
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vhd_footer {int dummy; } ;
typedef int footer ;


 int VHD_DISK_TYPE_FIXED ;
 int errno ;
 int image_copyout (int) ;
 int image_get_size () ;
 int secsz ;
 scalar_t__ sparse_write (int,struct vhd_footer*,int) ;
 int vhd_make_footer (struct vhd_footer*,int,int ,unsigned long long) ;

__attribute__((used)) static int
vhd_fix_write(int fd)
{
 struct vhd_footer footer;
 uint64_t imagesz;
 int error;

 error = image_copyout(fd);
 if (error)
  return (error);

 imagesz = image_get_size() * secsz;
 vhd_make_footer(&footer, imagesz, VHD_DISK_TYPE_FIXED, ~0ULL);
 error = (sparse_write(fd, &footer, sizeof(footer)) < 0) ? errno : 0;
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct ioctl_gntdev_unmap_notify {int dummy; } ;
struct ioctl_gntdev_unmap_grant_ref {int dummy; } ;
struct ioctl_gntdev_map_grant_ref {int dummy; } ;
struct ioctl_gntdev_get_offset_for_vaddr {int dummy; } ;
struct ioctl_gntdev_dealloc_gref {int dummy; } ;
struct ioctl_gntdev_alloc_gref {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int ENOSYS ;






 int gntdev_alloc_gref (struct ioctl_gntdev_alloc_gref*) ;
 int gntdev_dealloc_gref (struct ioctl_gntdev_dealloc_gref*) ;
 int gntdev_get_offset_for_vaddr (struct ioctl_gntdev_get_offset_for_vaddr*,struct thread*) ;
 int gntdev_map_grant_ref (struct ioctl_gntdev_map_grant_ref*) ;
 int gntdev_set_unmap_notify (struct ioctl_gntdev_unmap_notify*) ;
 int gntdev_unmap_grant_ref (struct ioctl_gntdev_unmap_grant_ref*) ;

__attribute__((used)) static int
gntdev_ioctl(struct cdev *dev, u_long cmd, caddr_t data,
 int fflag, struct thread *td)
{
 int error;

 switch (cmd) {
 case 129:
  error = gntdev_set_unmap_notify(
      (struct ioctl_gntdev_unmap_notify*) data);
  break;
 case 133:
  error = gntdev_alloc_gref(
      (struct ioctl_gntdev_alloc_gref*) data);
  break;
 case 132:
  error = gntdev_dealloc_gref(
      (struct ioctl_gntdev_dealloc_gref*) data);
  break;
 case 130:
  error = gntdev_map_grant_ref(
      (struct ioctl_gntdev_map_grant_ref*) data);
  break;
 case 128:
  error = gntdev_unmap_grant_ref(
      (struct ioctl_gntdev_unmap_grant_ref*) data);
  break;
 case 131:
  error = gntdev_get_offset_for_vaddr(
      (struct ioctl_gntdev_get_offset_for_vaddr*) data, td);
  break;
 default:
  error = ENOSYS;
  break;
 }

 return (error);
}

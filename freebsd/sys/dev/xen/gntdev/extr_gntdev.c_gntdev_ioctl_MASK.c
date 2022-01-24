#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct ioctl_gntdev_unmap_notify {int dummy; } ;
struct ioctl_gntdev_unmap_grant_ref {int dummy; } ;
struct ioctl_gntdev_map_grant_ref {int dummy; } ;
struct ioctl_gntdev_get_offset_for_vaddr {int dummy; } ;
struct ioctl_gntdev_dealloc_gref {int dummy; } ;
struct ioctl_gntdev_alloc_gref {int dummy; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOSYS ; 
#define  IOCTL_GNTDEV_ALLOC_GREF 133 
#define  IOCTL_GNTDEV_DEALLOC_GREF 132 
#define  IOCTL_GNTDEV_GET_OFFSET_FOR_VADDR 131 
#define  IOCTL_GNTDEV_MAP_GRANT_REF 130 
#define  IOCTL_GNTDEV_SET_UNMAP_NOTIFY 129 
#define  IOCTL_GNTDEV_UNMAP_GRANT_REF 128 
 int FUNC0 (struct ioctl_gntdev_alloc_gref*) ; 
 int FUNC1 (struct ioctl_gntdev_dealloc_gref*) ; 
 int FUNC2 (struct ioctl_gntdev_get_offset_for_vaddr*,struct thread*) ; 
 int FUNC3 (struct ioctl_gntdev_map_grant_ref*) ; 
 int FUNC4 (struct ioctl_gntdev_unmap_notify*) ; 
 int FUNC5 (struct ioctl_gntdev_unmap_grant_ref*) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, u_long cmd, caddr_t data,
	int fflag, struct thread *td)
{
	int error;

	switch (cmd) {
	case IOCTL_GNTDEV_SET_UNMAP_NOTIFY:
		error = FUNC4(
		    (struct ioctl_gntdev_unmap_notify*) data);
		break;
	case IOCTL_GNTDEV_ALLOC_GREF:
		error = FUNC0(
		    (struct ioctl_gntdev_alloc_gref*) data);
		break;
	case IOCTL_GNTDEV_DEALLOC_GREF:
		error = FUNC1(
		    (struct ioctl_gntdev_dealloc_gref*) data);
		break;
	case IOCTL_GNTDEV_MAP_GRANT_REF:
		error = FUNC3(
		    (struct ioctl_gntdev_map_grant_ref*) data);
		break;
	case IOCTL_GNTDEV_UNMAP_GRANT_REF:
		error = FUNC5(
		    (struct ioctl_gntdev_unmap_grant_ref*) data);
		break;
	case IOCTL_GNTDEV_GET_OFFSET_FOR_VADDR:
		error = FUNC2(
		    (struct ioctl_gntdev_get_offset_for_vaddr*) data, td);
		break;
	default:
		error = ENOSYS;
		break;
	}

	return (error);
}